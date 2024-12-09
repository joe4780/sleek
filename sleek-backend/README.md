Postman collection comprehensive documentation for the **Sleek Property Management System API**:

---

## **Sleek Property Management System API**

### **Base URL**
```
http://localhost:8000/api/
```

---

### **Endpoints**

#### **1. Retrieve All Property Listings**
- **Method**: `GET`
- **URL**: `{{BASE_URL}}property`
- **Description**: Fetch all property listings.
- **Response Example**:
  ```json
  {
    "success": true,
    "data": [
      {
        "id": 2,
        "name": "Baccarat Residences Edit",
        "type": "Studio",
        "description": "Welcome to Baccarat Residences...",
        "price": "3000",
        "status": "available",
        "image": "images/image1.jpg",
        "location": "Nairobi",
        "contact": "+245678907422",
        "created_at": "2024-12-08T11:05:48.000000Z",
        "updated_at": "2024-12-08T11:06:16.000000Z"
      }
    ]
  }
  ```

---

#### **2. Create a Property Listing**
- **Method**: `POST`
- **URL**: `{{BASE_URL}}property`
- **Description**: Add a new property listing.
- **Headers**:
  - `Accept: application/json`
- **Body** (Form-Data):
  - `property_name` (Text): Name of the property.
  - `property_type` (Text): Type of property (e.g., Studio).
  - `property_description` (Text): Description of the property.
  - `property_price` (Text): Price of the property.
  - `property_status` (Text): Status (e.g., available).
  - `property_image` (File): Image of the property.
  - `property_location` (Text): Location.
  - `property_contact` (Text): Contact number.
- **Response Example**:
  ```json
  {
    "success": true,
    "data": {
      "id": 3,
      "name": "Baccarat Studios",
      "type": "Studio",
      "description": "Welcome to Baccarat Residences...",
      "price": "3000",
      "status": "available",
      "image": "images/image2.jpg",
      "location": "Nairobi",
      "contact": "+245678907422",
      "created_at": "2024-12-08T11:06:00.000000Z",
      "updated_at": "2024-12-08T11:06:00.000000Z"
    },
    "message": "Property Create Successful"
  }
  ```

---

#### **3. Update a Property Listing**
- **Method**: `PUT`
- **URL**: `{{BASE_URL}}property/{id}`
- **Description**: Update an existing property listing.
- **Headers**:
  - `Accept: application/json`
- **Body** (Raw, JSON):
  ```json
  {
    "property_status": "unavailable"
  }
  ```
- **Response Example**:
  ```json
  {
    "success": true,
    "data": 1,
    "message": "Property Update Successful"
  }
  ```

---

#### **4. Retrieve a Single Property Listing**
- **Method**: `GET`
- **URL**: `{{BASE_URL}}property/{id}`
- **Description**: Retrieve details of a specific property.
- **Response Example** (Success):
  ```json
  {
    "success": true,
    "data": {
      "id": 2,
      "name": "Baccarat Residences Edit",
      "type": "Studio",
      "description": "Welcome to Baccarat Residences...",
      "price": "3000",
      "status": "available",
      "image": "images/image1.jpg",
      "location": "Nairobi",
      "contact": "+245678907422",
      "created_at": "2024-12-08T11:05:48.000000Z",
      "updated_at": "2024-12-08T11:06:16.000000Z"
    }
  }
  ```
- **Response Example** (Not Found):
  ```json
  {
    "success": false,
    "data": "Property Not Found"
  }
  ```

---

#### **5. Delete a Property Listing**
- **Method**: `DELETE`
- **URL**: `{{BASE_URL}}property/{id}`
- **Description**: Remove a property listing from the system.
- **Response**: Status code `204` (No Content).

---

### **Environment Variables**
- `BASE_URL`: The base URL for all API endpoints. Default: `http://localhost:8000/api/`

---
