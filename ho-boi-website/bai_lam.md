# bai_lam

# BÀI LÀM – HACKATHON 02

- **Mã đề:** 01
- **Họ tên: Nguyen Hai Duong**
- **Lớp:**
- **Link repository:**
- **Hệ điều hành (Windows/macOS): Windows**

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```bash
1: pwd
2: ls -Force
3: mv ghi_chu_ban_giao.txt docs
4: mkdir backup
5: cp ./data/ban_ve_thang_1.xlsx backup
6: rm  temp_101.tmp
7: cd ./logs/
   Get-ChildItem -Recurse -Force
   cd..

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```
 Directory: C:\Users\my pc\Downloads\starter-kit\starter-kit\ho-boi-website\logs

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:06 AM            972 visit.log

PS C:\Users\my pc\Downloads\starter-kit\starter-kit\ho-boi-website\logs> cd..
PS C:\Users\my pc\Downloads\starter-kit\starter-kit\ho-boi-website> Get-ChildItem -Recurse -Force

    Directory: C:\Users\my pc\Downloads\starter-kit\starter-kit\ho-boi-website

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/4/2026   7:55 AM                backup
d-----         11/4/2026   7:47 AM                data
d-----         11/4/2026   7:53 AM                docs
d-----         11/4/2026   7:46 AM                evidence
d-----         11/4/2026   7:47 AM                logs
d-----         11/4/2026   7:40 AM                web
------         11/3/2026   7:06 AM             74 .env
-a----         11/3/2026   7:06 AM           2407 bai_lam.md

    Directory: C:\Users\my pc\Downloads\starter-kit\starter-kit\ho-boi-website\backup

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:06 AM           6106 ban_ve_thang_1.xlsx

    Directory: C:\Users\my pc\Downloads\starter-kit\starter-kit\ho-boi-website\data

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:06 AM           6106 ban_ve_thang_1.xlsx

    Directory: C:\Users\my pc\Downloads\starter-kit\starter-kit\ho-boi-website\docs

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:06 AM            158 ghi_chu _ban_giao.txt

    Directory: C:\Users\my pc\Downloads\starter-kit\starter-kit\ho-boi-website\logs

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:06 AM            972 visit.log

    Directory: C:\Users\my pc\Downloads\starter-kit\starter-kit\ho-boi-website\web

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/4/2026   7:40 AM                images
------         11/3/2026   7:06 AM            574 app.js
------         11/3/2026   7:06 AM            507 index.html
------         11/3/2026   7:06 AM            460 style.css

    Directory: C:\Users\my pc\Downloads\starter-kit\starter-kit\ho-boi-website\web\images

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
------         11/3/2026   7:06 AM           3061 logo-aquazone.png
```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```bash
 Get-Content ./logs/visit.log | Select-String " status=500" > ./logs/loi_500.txt
```

### 2 dòng đầu tiên trong logs/loi_500.txt

```
2026-01-28 08:24:34 POST /api/thanh-toan status=500
2026-01-28 08:28:45 POST /api/thanh-toan status=500

```

### b) Lệnh đếm số dòng status=404 và kết quả

```bash
(Get-Content ./logs/visit.log | Select-String "status=404" | Measure-Object).Count
```

```
 kết quả đếm : 4
```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```bash
./tong_hop.ps1
```

### Nội dung file logs/tong_hop.txt

```
=== BAO CAO SU CO WEBSITE ===

2026-01-28 08:07:39 GET /tin-tuc status=404
2026-01-28 08:13:01 GET /ve-cu status=404
2026-01-28 08:34:07 GET /images/be-boi-2.jpg status=404
2026-01-28 08:57:24 GET /khuyen-mai-he status=404

Count    : 6
Average  : 
Sum      : 
Maximum  : 
Minimum  : 
Property : 

```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.
> 
- [x]  README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [x]  .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [x]  .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 | network | Failed to load resource: net::ERR_FILE_NOT_FOUND | Sua logo.png ⇒ logo-aquazone.png |
| 2 | console | ReferenceError: hienThiBangGia is not defined | Sửa hienThiBangGia ⇒ hienThiBangGiaVe |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).
> 

### Báo cáo lỗi gửi trưởng nhóm

- **Context:**du an AquaZone-Bán vé hồ bơi dang kiem tra, chay thu web/index.html bång devtools
- **Expected:** báo cáo lỗi và sửa lỗi de chay duoc
- **Actual:** co 2 loi tai tab console ( sai bien ), network (sai duong dan logo)
- **Log:** console.png,network.png

### Câu tìm kiếm Google

```
site:stackoverflow.com "net :: ERR_FILE_NOT_FOUND" -ads -sexy
site:stackoverflow.com"app. js:18 Uncaught ReferenceError: hienThiBangGia is not define
d" -ads
```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/ban_ve_thang_1.xlsx`, không cần ghi vào đây.
>