# 获取文件夹下的所有文件，包括子文件夹中的文件
$folderPath = "输入文件夹路径"
$files = Get-ChildItem -Path $folderPath -File -Recurse

# 批量修改每个文件的时间
foreach ($file in $files) {
    # 修改创建时间          未修改
    $file.CreationTime = "2023-10-09 12:00:00"
    
    # 修改修改时间（LastWriteTime）
    $file.LastWriteTime = "2023-10-09 13:00:00"
    
    # 修改访问时间（LastAccessTime）
    $file.LastAccessTime = "2023-10-09 14:00:00"
}
