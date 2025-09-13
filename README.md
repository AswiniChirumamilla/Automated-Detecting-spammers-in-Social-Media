Automated Spammer Detection in Social Media

Overview
This project is a "web-based automated system" designed to detect spammers in social media platforms using *J2EE, Apache Tomcat, and SQL*. It leverages *machine learning* algorithms to analyze user activity patterns and flag potential spam accounts for administrative review.

🔹Features
- User Authentication: Secure login for admin users.
- Data Preprocessing: Cleans and normalizes user activity data.
- Feature Extraction: Analyzes posting frequency, duplicate content, and engagement.
- ML-Based Classification: Identifies spammer accounts using trained models.
- Database Updates & Alerts: Flags spammer accounts and notifies admin.
- Admin Review Panel: Allows banning or warning of flagged users.

🔹Tech Stack
- Backend: J2EE (Servlets, JSP)
- Server: Apache Tomcat
- Database: MySQL / PostgreSQL
- Frontend: HTML, CSS, JavaScript (JSP-based UI)

🔹Installation & Setup
Prerequisites
- JDK 8+
- Apache Tomcat 9+
- MySQL / PostgreSQL
- Eclipse / IntelliJ (for development)

### Steps
1. Clone the Repository
   ```sh
   git clone https://github.com/yourusername/spammer-detection.git
   cd spammer-detection
   ```

2. Import the Project into Eclipse
   - Open Eclipse > File > Import > Existing Projects into Workspace.
   - Select the cloned project folder.

3. Configure Database
   - Create a database in MySQL/PostgreSQL.
   - Execute `schema.sql` to set up required tables.
   - Update `db-config.properties` with database credentials.

4. Deploy on Apache Tomcat
   - Place the `.war` file in the `webapps` directory of Tomcat.
   - Start Tomcat and visit `http://localhost:8080/spammer-detection`.

🔹Execution Steps & Results
1. Admin Login: Successfully logs in and retrieves user activity data.
2. Data Preprocessing: Cleans and extracts spam-related features.
3. User Login: Identifies spammers with high accuracy.
4. Database Update: Flags spammers and sends admin alerts.
5. Admin Review: Takes action (ban/warn) on flagged accounts.|

Future Enhancements
- Real-time monitoring of social media feeds.
- Role-based access control for multi-user management.

