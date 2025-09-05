# Savry

A simple way to pre‑order for dine‑in or takeaway. Pick a restaurant, choose the menu, set when food should be ready, and pay—so the order is prepared by arrival or pickup.

## Tech stack

- Frontend: Flutter mobile app
    
- Backend: Rust API, Cockroach DB
    
- Realtime: WebSockets for live order status
    
- Payments: In‑app payments
    

## Current features

- Restaurant selection and availability for dine‑in or takeaway
    
- Menu browsing with item customizations and modifiers
    
- Scheduled prep so food is ready at arrival/pickup
    
- Secure checkout and live status updates (preparing → ready → picked up/served)
    
- Reservation linking for dine‑in (time + party size)
    

## Future features

- B2B (for restaurants)
    
    - Inventory and recipes: stock deductions per item, low‑stock alerts, purchase orders, expiry tracking.
        
    - Staff & payroll: shifts, attendance, payouts, role‑based access, outlet‑level permissions.
        
    - Operations & analytics: kitchen capacity board, order throttling, refunds/adjustments, multi‑outlet dashboards, head‑office reporting.
        
    - Integrations: POS connectors, accounting exports, aggregator/quick‑commerce catalog sync and order webhooks.
        
    - Compliance & controls: audit logs, approvals for price/menu changes, SLA and refund policies.
        
- D2C (for consumers)
    
    - Household inventory: auto‑track pantry items, expiry reminders, smart re‑order suggestions.
        
    - Partner ordering: re‑order via delivery partners, scheduled delivery/pickup options, promo linking.
        
    - Personalization: saved favorites, past orders, dietary filters, allergen profiles, personal diet plans.
        
    - Convenience: table‑side QR ordering, order edits/partial items, split bills and multiple payment methods.
        