# Dynamic Form Builder System

A full-stack application for building and managing dynamic forms with validation, submissions, and data management.

## 🎯 Milestone Completion Status

- ✅ **Milestone 1**: Frontend Development (Complete)
- ✅ **Milestone 2**: Backend Development (Complete)

## 🛠 Tech Stack

### Frontend
- React 19
- TanStack Query (server state management)
- TanStack Form (form state management)
- TanStack Table (data tables)
- Tailwind CSS (styling)
- TypeScript (type safety)
- Vite (build tool)

### Backend
- Node.js + Express
- TypeScript
- In-memory storage with file persistence
- CORS enabled
- Input validation

## 🚀 Setup and Run Instructions

### Prerequisites
- Node.js 18+ and npm/yarn

### Backend Setup

```bash
cd backend
npm install
npm run dev
```

Backend runs on `http://localhost:3000`

### Frontend Setup

```bash
cd frontend
npm install
npm run dev
```

Frontend runs on `http://localhost:5173`

## 📋 Features Implemented

### Frontend
- ✅ Dynamic form rendering from schema
- ✅ All 8 field types (text, number, select, multi-select, date, textarea, switch)
- ✅ Inline validation with error messages
- ✅ Loading and error states
- ✅ Success/error feedback
- ✅ Paginated submissions table
- ✅ Server-side sorting
- ✅ Items per page selector
- ✅ View submission details (modal)
- ✅ Query invalidation after submission
- ✅ **CSV Export** - Export all submissions to CSV file
- ✅ **Edit Submission** - Update existing submissions with validation
- ✅ **Delete Submission** - Remove submissions with confirmation
- ✅ **Dark Mode** - Toggle between light and dark themes
- ✅ **Debounced Search** - Real-time search with 500ms debounce

### Backend
- ✅ GET /api/form-schema - Returns Employee Onboarding form schema
- ✅ POST /api/submissions - Validates and stores submissions
- ✅ GET /api/submissions - Paginated and sortable submissions list
- ✅ **PUT /api/submissions/:id** - Update existing submission
- ✅ **DELETE /api/submissions/:id** - Delete submission
- ✅ **Search/Filter** - Search across all submission fields
- ✅ Proper validation against schema
- ✅ Error handling with detailed messages
- ✅ CORS support
- ✅ Data persistence to JSON file

## 🎨 API Endpoints

### GET /api/form-schema
Returns the dynamic form schema for Employee Onboarding.

### POST /api/submissions
Accepts and validates form submissions.
- Returns 201 on success with `id` and `createdAt`
- Returns 400 on validation failure with detailed errors

### GET /api/submissions
Returns paginated submissions.
- Query params: `page`, `limit`, `sortBy`, `sortOrder`, `search`
- Returns total count, pages, and data
- Search filters across all submission fields

### PUT /api/submissions/:id
Updates an existing submission.
- Validates data against schema
- Returns 200 on success with updated submission
- Returns 404 if submission not found
- Returns 400 on validation failure

### DELETE /api/submissions/:id
Deletes a submission.
- Returns 200 on success
- Returns 404 if submission not found

## 📝 Known Issues

None at this time.

## 💡 Assumptions

- Backend uses in-memory storage with JSON file persistence
- Default pagination: 10 items per page
- Sorting only on `createdAt` field
- Form schema is fixed (Employee Onboarding)
- Submissions are stored with auto-generated IDs
- Date fields accept ISO 8601 format
- Multi-select returns array of strings

## 🎉 Bonus Features Completed

All bonus features have been implemented:

### Backend Bonus Features ✅
- ✅ Update submission (PUT /api/submissions/:id)
- ✅ Delete submission (DELETE /api/submissions/:id)
- ✅ Search/filter functionality

### Frontend Bonus Features ✅
- ✅ CSV export with proper formatting
- ✅ Edit submission with modal and validation
- ✅ Delete submission with confirmation dialog
- ✅ Dark mode toggle
- ✅ Debounced search (500ms delay)

## 🔮 Future Enhancements

- URL state synchronization for pagination/search
- Database integration (PostgreSQL/MongoDB)
- Bulk operations (delete multiple, export filtered)
- Advanced filtering (date ranges, multi-field filters)
- Submission history/audit log
- User authentication and authorization
