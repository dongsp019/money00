# Money Tracker — Project Specification

## 1. Product vision
แอปรายรับรายจ่ายส่วนตัว ใช้งานง่ายบน iPhone เป็นภาษาไทย มี Dark Mode และให้ผู้ใช้ควบคุมข้อมูลของตนเอง

## 2. Product goals
- เพิ่มรายรับ/รายจ่ายได้รวดเร็ว
- แยกหมวดหมู่และใส่หมายเหตุได้
- ดูสรุปรายเดือน: รายรับ รายจ่าย ยอดสุทธิ
- แก้ไขและลบรายการได้
- Export/Import JSON เพื่อสำรองและย้ายข้อมูล
- ติดตั้งบน iPhone Home Screen ผ่าน Safari

## 3. Non-goals ใน MVP
- ยังไม่มีบัญชีผู้ใช้หรือ cloud sync
- ยังไม่เชื่อมธนาคาร
- ยังไม่ใช่ native App Store app
- ยังไม่มีระบบลงทุน/สินเชื่อ/คำแนะนำการเงิน

## 4. Target platform
- Primary: iOS Safari และ PWA บน Home Screen
- Secondary: Desktop/mobile browser สำหรับจัดการและทดสอบ
- Design: mobile-first, Dark Mode, safe-area aware

## 5. Core data model (legacy compatible)
รายการเดิมใช้รูปแบบ:
`{ id, t, a, c, n, d }`
- `id`: unique identifier
- `t`: `in` หรือ `ex`
- `a`: amount > 0
- `c`: category
- `n`: note (optional)
- `d`: วันที่ `YYYY-MM-DD`

Storage keys:
- `money`: JSON array ของ transactions
- `money_seed1`: flag ป้องกัน seed data ซ้ำ

ห้ามเปลี่ยน schema หรือ key โดยไม่มี migration plan และ backup/restore test

## 6. UX rules
- แสดงเงินเป็น THB (฿) และรูปแบบตัวเลขไทย
- รายรับใช้เครื่องหมายบวก/สีเขียว รายจ่ายใช้เครื่องหมายลบ/สีแดง
- ป้องกันจำนวนเงินว่าง ศูนย์ หรือติดลบ
- ลบรายการต้องยืนยัน
- สถานะ empty ต้องมีคำแนะนำ
- ฟอร์มต้องใช้งานได้บนจอเล็กและคีย์บอร์ด iOS
- ปุ่มและ input มีขนาดแตะได้สะดวก

## 7. Privacy and data safety
- MVP เก็บข้อมูลใน localStorage ของ origin ปัจจุบัน
- ข้อมูลไม่ sync ระหว่างอุปกรณ์หรือ browser profile
- เปลี่ยน domain/origin อาจทำให้ข้อมูลเดิมไม่ปรากฏ ต้อง export จาก origin เก่าแล้ว import ใน origin ใหม่
- ห้าม log ข้อมูลธุรกรรมจริงลง console หรือ analytics
- ห้าม commit backup หรือข้อมูลการเงินจริง

## 8. Acceptance criteria — MVP
- [ ] เปิด URL ผ่าน Safari ได้โดยไม่มี horizontal overflow
- [ ] Add to Home Screen แล้วเปิดแบบ standalone ได้
- [ ] manifest และ service worker โหลดได้ผ่าน HTTPS
- [ ] เพิ่มรายรับและรายจ่ายได้
- [ ] ยอดรวมรายเดือนคำนวณถูกต้อง
- [ ] แก้ไข/ลบรายการได้
- [ ] Export JSON และ Import JSON ได้
- [ ] ข้อมูลเดิมใน key `money` ยังอ่านได้
- [ ] ทดสอบเมื่อ offline หลังเปิดเว็บและ cache สำเร็จ
- [ ] ไม่มี secret หรือข้อมูลส่วนบุคคลใน repository

## 9. Roadmap
### Phase 0 — Project foundation
- GitHub repo, docs, branch policy, Netlify deploy
### Phase 1 — PWA reliability
- ตรวจ manifest, icons, service worker, iOS install
- ปรับ error handling และ import/export
### Phase 2 — Finance UX
- Search/filter, category breakdown, charts, budget
### Phase 3 — Data durability
- Versioned schema, migration, optional encrypted backup
### Phase 4 — Native iOS option
- ประเมิน Capacitor, Xcode, signing, TestFlight และ App Store requirements
