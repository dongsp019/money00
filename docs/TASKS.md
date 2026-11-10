# Backlog & Task Board

สถานะ: `[ ]` ยังไม่เริ่ม · `[~]` กำลังทำ · `[x]` เสร็จและตรวจแล้ว

## P0 — Foundation
- [ ] Create GitHub repository `money-tracker`
- [ ] Push initial project files to `main`
- [ ] Connect repository to Netlify
- [ ] Verify Netlify publish directory is `public`
- [ ] Verify HTTPS deployment and custom domain (optional)
- [ ] Test install flow on physical iPhone Safari
- [ ] Confirm old data migration/export-import between old and new origin

## P1 — Reliability
- [ ] Add automated checks for amount/date/type validation
- [ ] Improve import validation and malformed backup handling
- [ ] Replace prompt-based edit/delete choice with accessible action UI
- [ ] Add storage quota/write error feedback
- [ ] Test service-worker cache update strategy
- [ ] Test VoiceOver labels and keyboard focus

## P2 — Finance features
- [ ] Search transactions by note/category
- [ ] Filter by income/expense/category/date range
- [ ] Category spending breakdown
- [ ] Monthly budget and progress
- [ ] Weekly/monthly charts
- [ ] Recurring transaction support (only after UX requirements approved)

## P3 — Native iOS exploration
- [ ] Decide whether PWA is sufficient or App Store distribution is required
- [ ] Evaluate Capacitor wrapper
- [ ] Prepare Mac + Xcode build/signing setup
- [ ] TestFlight testing
- [ ] App Store privacy and review preparation

## Definition of Done
- Acceptance criteria fulfilled
- No unrelated changes
- Tested on target device/browser where applicable
- PR includes summary, screenshots where UI changes, and test notes
- No secrets or real personal financial data committed
