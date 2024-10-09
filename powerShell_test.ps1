# 获取文件夹下的所有文件，包括子文件夹中的文件
$folderPath = "输入文件夹路径"
$files = Get-ChildItem -Path $folderPath -File -Recurse

# 批量修改每个文件的时间
foreach ($file in $files) {
    # 修改创建时间
    $file.CreationTime = "2023-01-01 00:00:00"
    
    # 修改修改时间（LastWriteTime）
    $file.LastWriteTime = "2023-01-01 00:00:00"
    
    # 修改访问时间（LastAccessTime）
    $file.LastAccessTime = "2023-01-01 00:00:00"
}
