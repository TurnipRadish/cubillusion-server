#!/bin/bash
# 合并资源包并创建发布包

set -e

echo "🔄 开始合并资源包..."

# 创建临时目录
TEMP_DIR=$(mktemp -d)
MERGED_DIR="$TEMP_DIR/merged"
OUTPUT_ZIP="merged-resourcepack-$(date +%Y%m%d-%H%M%S).zip"

# 创建合并目录
mkdir -p "$MERGED_DIR"

# 检查是否有资源包
if [ ! -d "resourcepacks" ] || [ -z "$(ls -A resourcepacks/*.zip 2>/dev/null)" ]; then
    echo "⚠️ 未找到资源包，跳过合并"
    exit 0
fi

# 按字母顺序合并资源包
for pack in resourcepacks/*.zip; do
    if [ -f "$pack" ]; then
        echo "📦 合并: $(basename $pack)"
        unzip -q -o "$pack" -d "$MERGED_DIR/" 2>/dev/null || true
    fi
done

# 创建合并包
cd "$MERGED_DIR"
zip -r "../$OUTPUT_ZIP" . > /dev/null

# 移动到工作目录
cd -
mv "$TEMP_DIR/$OUTPUT_ZIP" .

# 清理临时文件
rm -rf "$TEMP_DIR"

echo "✅ 资源包合并完成: $OUTPUT_ZIP"
echo "::set-output name=resourcepack_file::$OUTPUT_ZIP"
