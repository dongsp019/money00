# Money Tracker

แอปรายรับรายจ่ายส่วนตัวภาษาไทย ออกแบบสำหรับ iPhone ในรูปแบบ Progressive Web App (PWA) โดยเริ่มจาก HTML เวอร์ชันเดิมของผู้ใช้

## เป้าหมายระยะสั้น
- ติดตั้งจาก Safari ผ่าน Add to Home Screen
- UI แบบ Dark Mode ที่เหมาะกับ iPhone
- เพิ่ม/แก้ไข/ลบรายรับรายจ่าย
- สรุปยอดรายเดือน
- สำรองและนำเข้าข้อมูล JSON
- Deploy ผ่าน Netlify จาก GitHub

## เริ่มต้นในเครื่อง
โปรเจกต์ปัจจุบันเป็น static PWA ไม่ต้อง build:
1. เปิดโฟลเดอร์นี้ใน VS Code
2. ใช้ Live Server หรือรัน `npx serve public`
3. เปิด URL ที่ได้บนเครื่องทดสอบ

## Deploy
- เชื่อม GitHub repository กับ Netlify
- Build command: เว้นว่าง
- Publish directory: `public`
- ใช้ `netlify.toml` ที่ root

## ติดตั้งบน iPhone
1. เปิด URL HTTPS ด้วย Safari
2. Share → Add to Home Screen
3. เปิดจากไอคอนบน Home Screen

> หมายเหตุ: PWA ที่ติดตั้งบน Home Screen ไม่ใช่แอป Native ที่เผยแพร่ผ่าน App Store หากต้องการ App Store ให้ทำเฟส Capacitor + Xcode แยกต่างหาก

## เอกสารทีม
- [Project Spec](docs/PROJECT_SPEC.md)
- [Architecture](docs/ARCHITECTURE.md)
- [Tasks](docs/TASKS.md)
- [Git Workflow](docs/GIT_WORKFLOW.md)
- [Claude Instructions](CLAUDE.md)
- [Changelog](CHANGELOG.md)

## ข้อมูลและความเป็นส่วนตัว
รุ่นปัจจุบันเก็บข้อมูลด้วย `localStorage` ใน browser origin นั้น ๆ ข้อมูลไม่ sync ระหว่างอุปกรณ์โดยอัตโนมัติ ต้อง Export/Import เพื่อย้ายข้อมูล ห้ามใส่ข้อมูลส่วนตัวหรือ credential ลงใน GitHub
