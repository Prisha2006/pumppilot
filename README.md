# Pump Pilot - Petrol Pump Management System

A comprehensive petrol pump management system with Flutter frontend, Python FastAPI backend, and MySQL database.

## Features

### 🏪 Core Modules
- **Sales Management** - Track daily fuel and lubricant sales with shift-wise data
- **Inventory Management** - Monitor fuel stock levels with automatic alerts
- **Employee Management** - Handle staff scheduling, attendance, and payroll
- **Financial Management** - Track revenue, expenses, and generate reports
- **Reporting & Analytics** - Real-time dashboards and performance insights
- **Tanker Management** - Schedule and track fuel deliveries
- **Meter Reading** - Digital dispenser reading management
- **Billing System** - Generate invoices with multiple payment options

### 🎨 Modern UI/UX
- Material 3 design system
- Dark/Light theme support
- Responsive design for tablets and phones
- Smooth animations and transitions
- Intuitive navigation

## Tech Stack

- **Frontend**: Flutter (Dart)
- **Backend**: Python FastAPI
- **Database**: MySQL
- **Authentication**: JWT tokens
- **State Management**: Provider pattern

## Quick Start

### Prerequisites
- Flutter SDK (3.10+)
- Python 3.8+
- MySQL 8.0+
- Git

### Backend Setup

1. Navigate to backend directory:
```bash
cd python_backend
```

2. Create virtual environment:
```bash
python -m venv venv
venv\Scripts\activate  # Windows
# source venv/bin/activate  # Linux/Mac
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

4. Setup environment:
```bash
copy .env.example .env
# Edit .env with your database credentials
```

5. Setup database:
```bash
# Create MySQL database and run schema.sql
mysql -u root -p < database/schema.sql
```

6. Run backend:
```bash
python main.py
```

Backend will be available at: http://localhost:8000

### Frontend Setup

1. Navigate to frontend directory:
```bash
cd flutter_frontend
```

2. Get dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Default Login Credentials

- **Admin**: admin@pumppilot.com / password
- **Manager**: manager@pumppilot.com / password

## API Documentation

Once the backend is running, visit:
- Swagger UI: http://localhost:8000/docs
- ReDoc: http://localhost:8000/redoc

## Project Structure

```
pump_pilot/
├── flutter_frontend/          # Flutter mobile app
│   ├── lib/
│   │   ├── screens/          # UI screens
│   │   ├── widgets/          # Reusable widgets
│   │   ├── services/         # API and business logic
│   │   ├── models/           # Data models
│   │   └── utils/            # Utilities and themes
├── python_backend/           # FastAPI backend
│   ├── app/
│   │   ├── api/             # API routes
│   │   ├── models/          # Database models
│   │   ├── services/        # Business logic
│   │   └── utils/           # Utilities
└── database/                # Database schema and migrations
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

This project is licensed under the MIT License.

## Support

For support and questions, please open an issue in the GitHub repository.