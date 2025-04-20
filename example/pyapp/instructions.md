
Application: fastcrm

Server technologies:

Python
Fastapi
Sqlite database

Frontend technologies:
vite
react
typescript
The react application is a single page application
The server should run both the API and the single page application


## Development Guidance

### Backend (FastAPI)

1. **Project Setup**
    - Use Python 3.8+ 
    - Set up virtual environment
    - Install FastAPI and Uvicorn: `pip install fastapi uvicorn`

2. **API Structure**
    - Create modular routers
    - Define Pydantic models for request/response validation
    - Add OpenAPI documentation
    - Implement proper error handling

3. **Development Practices**
    - Use async/await for I/O bound operations
    - Add unit tests with pytest
    - Include proper logging
    - Follow PEP 8 style guidelines

### Frontend (Vite/React/TypeScript)

1. **Project Setup**
    - Initialize with: `npm create vite@latest frontend -- --template react-ts`
    - Configure ESLint and Prettier

2. **Architecture**
    - Implement component-based structure
    - Use React hooks for state management
    - Create TypeScript interfaces for API data
    - Set up API client with Axios/fetch

3. **Development Practices**
    - Follow functional component patterns
    - Use CSS modules or styled-components
    - Write unit tests with Jest and React Testing Library
    - Implement responsive design principles

### Integration

1. **API Communication**
    - Set up CORS on the backend
    - Create API client in frontend
    - Use environment variables for configuration
    - Handle authentication/authorization flow

2. **Deployment**
    - Containerize with Docker
    - Configure CI/CD pipeline
    - Set up proper environment configurations

    ## Project Structure

    ```
    fastcrm/
    ├── backend/
    │   ├── app/
    │   │   ├── __init__.py
    │   │   ├── main.py           # FastAPI application entry point
    │   │   ├── config.py         # Configuration settings
    │   │   ├── database.py       # SQLite database connection
    │   │   ├── api/
    │   │   │   ├── __init__.py
    │   │   │   ├── routes/
    │   │   │   │   ├── __init__.py
    │   │   │   │   ├── customers.py
    │   │   │   │   ├── deals.py
    │   │   │   │   └── users.py
    │   │   │   └── deps.py       # Dependency injection
    │   │   ├── models/
    │   │   │   ├── __init__.py
    │   │   │   ├── customer.py
    │   │   │   ├── deal.py
    │   │   │   └── user.py
    │   │   ├── schemas/
    │   │   │   ├── __init__.py
    │   │   │   ├── customer.py
    │   │   │   ├── deal.py
    │   │   │   └── user.py
    │   │   ├── crud/
    │   │   │   ├── __init__.py
    │   │   │   ├── base.py
    │   │   │   ├── crud_customer.py
    │   │   │   ├── crud_deal.py
    │   │   │   └── crud_user.py
    │   │   └── core/
    │   │       ├── __init__.py
    │   │       ├── security.py   # Authentication
    │   │       └── errors.py     # Error handling
    │   ├── tests/
    │   │   ├── __init__.py
    │   │   ├── conftest.py
    │   │   ├── test_customers.py
    │   │   ├── test_deals.py
    │   │   └── test_users.py
    │   ├── .env
    │   ├── requirements.txt
    │   └── README.md
    ├── frontend/
    │   ├── src/
    │   │   ├── components/
    │   │   │   ├── common/
    │   │   │   │   ├── Header.tsx
    │   │   │   │   ├── Footer.tsx
    │   │   │   │   └── Sidebar.tsx
    │   │   │   ├── customers/
    │   │   │   │   ├── CustomerList.tsx
    │   │   │   │   ├── CustomerForm.tsx
    │   │   │   │   └── CustomerDetail.tsx
    │   │   │   ├── deals/
    │   │   │   │   ├── DealList.tsx
    │   │   │   │   ├── DealForm.tsx
    │   │   │   │   └── DealDetail.tsx
    │   │   │   └── users/
    │   │   │       ├── UserList.tsx
    │   │   │       └── UserForm.tsx
    │   │   ├── pages/
    │   │   │   ├── Dashboard.tsx
    │   │   │   ├── Customers.tsx
    │   │   │   ├── Deals.tsx
    │   │   │   ├── Users.tsx
    │   │   │   └── Login.tsx
    │   │   ├── hooks/
    │   │   │   ├── useAuth.ts
    │   │   │   └── useApi.ts
    │   │   ├── services/
    │   │   │   ├── api.ts
    │   │   │   └── auth.ts
    │   │   ├── types/
    │   │   │   ├── customer.ts
    │   │   │   ├── deal.ts
    │   │   │   └── user.ts
    │   │   ├── utils/
    │   │   │   └── helpers.ts
    │   │   ├── App.tsx
    │   │   ├── main.tsx
    │   │   └── vite-env.d.ts
    │   ├── public/
    │   ├── package.json
    │   ├── tsconfig.json
    │   ├── vite.config.ts
    │   ├── .eslintrc.js
    │   ├── .prettierrc
    │   └── index.html
    ├── .gitignore
    ├── docker-compose.yml
    ├── Dockerfile.backend
    ├── Dockerfile.frontend
    └── README.md
    ```

    This structure organizes the application into backend and frontend directories, with clear separation of concerns in each:

    - Backend follows a modular architecture with separate modules for API routes, models, schemas, and CRUD operations
    - Frontend is organized by components, pages, and services with TypeScript type definitions
    - Docker configuration is included for containerization
