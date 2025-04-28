# mvvm_contracts_impl

A Flutter project implementing the **MVVM architecture** using contracts to define services, data sources, repositories, view models, and use cases.

## Project Overview

This project demonstrates a robust implementation of the MVVM architecture with the following features:

- **State Management**: Provider
- **Dependency Injection**: get_it
- **Network Requests**: dio
- **Data Storage**: SharedPreferences and Hive (optional)
- **Backend**: Postman Mock Server

### App Features

1. **User Roles**:
   - Admin
   - Vendor
   - Customer

2. **Login Functionality**:
   - Users can log in and are assigned roles (Admin, Vendor, or Customer).

3. **Home Page**:
   - Displays differently based on the user's role:
     - **Vendor**: Blue theme
     - **Customer**: Red theme
     - **Admin**: Yellow theme

4. **CRUD Operations**:
   - **Vendors**: Manage inventory (add, update, delete items).
   - **Customers**: Manage cart (add, update, delete items).
   - **Admins**: Manage users and oversee operations.

5. **Environment Setup**:
   - Staging
   - Development
   - Live

### Backend Data Structure

#### Shared
```json
{
  "id": "string",
  "first_name": "string",
  "last_name": "string",
  "role": "string",
  "access_token": "string",
  "refresh_token": "string"
}
