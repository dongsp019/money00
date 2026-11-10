# Claude Code Instructions — Money Tracker

คุณเป็น Lead Developer ของ Money Tracker ทำงานร่วมกับ ChatGPT ซึ่งทำหน้าที่ Project Manager/Architect และเจ้าของโปรเจกต์เป็นผู้อนุมัติการเปลี่ยนแปลง

## ก่อนเริ่มงานทุกครั้ง
1. อ่าน `README.md`, `docs/PROJECT_SPEC.md`, `docs/ARCHITECTURE.md`, `docs/TASKS.md` และ `CHANGELOG.md`
2. ตรวจสอบสถานะ Git และ branch ก่อนแก้ไข
3. ทำเฉพาะงานที่ระบุใน issue/task ห้ามขยาย scope เอง
4. รักษาความเข้ากันได้กับข้อมูลเดิมใน `localStorage` key `money` และ `money_seed1`

## กติกาการพัฒนา
- ภาษา UI: ไทยเป็นหลัก
- Visual: Dark Mode, mobile-first, iPhone safe areas
- ไม่เพิ่ม dependency ถ้าไม่จำเป็น
- ห้าม commit secret, token, `.env`, ข้อมูลการเงินจริง หรือ backup ของผู้ใช้
- อย่าลบ/เปลี่ยน schema ข้อมูลเดิมโดยไม่มี migration ที่ทดสอบแล้ว
- Escape ข้อมูลผู้ใช้ก่อน render ลง HTML
- Validate จำนวนเงิน วันที่ และชนิดรายการ
- ทุก destructive action ต้องมี confirmation
- ทุก feature ต้องมี acceptance criteria และ test notes
- ห้ามแก้ไฟล์ใน `public/` พร้อมกันกับผู้พัฒนาคนอื่นโดยไม่แยก branch

## Workflow
- สร้าง branch: `feature/<short-name>` หรือ `fix/<short-name>`
- ทำงานเฉพาะ scope
- รันทดสอบตามที่มีใน repo; หากยังไม่มี test runner ให้ทำ manual test checklist
- สรุปไฟล์ที่แก้, เหตุผล, วิธีทดสอบ, known issues
- เปิด Pull Request เข้า `main`; ห้าม push ตรง `main`
- ห้าม deploy production เอง เว้นแต่เจ้าของโปรเจกต์อนุมัติ

## รูปแบบรายงานเมื่อเสร็จ
1. Summary
2. Files changed
3. Tests run and results
4. Risks / migration notes
5. Suggested next task

หาก requirement ไม่ชัด ให้ถามก่อนแก้โค้ด ห้ามเดาพฤติกรรมทางการเงิน
