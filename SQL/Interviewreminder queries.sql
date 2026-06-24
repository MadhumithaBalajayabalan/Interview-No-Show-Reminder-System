USE InterviewReminderProject;

DROP TABLE Interview_Data;

CREATE TABLE Interview_Data (
    Interview_ID VARCHAR(50),
    Candidate_Name VARCHAR(100),
    Recruiter_Name VARCHAR(100),
    Department VARCHAR(100),
    Experience_Level VARCHAR(50),
    Interview_Date VARCHAR(50),
    Interview_Mode VARCHAR(50),
    Reminder_Sent VARCHAR(50),
    Confirmation_Status VARCHAR(50),
    Attendance_Status VARCHAR(50),
    Rescheduled VARCHAR(50)
);
SELECT * FROM Interview_Data;

SELECT COUNT(*) AS Total_Interviews
FROM Interview_Data;

SELECT
ROUND(
SUM(CASE WHEN Attendance_Status='Attended' THEN 1 ELSE 0 END)*100.0
/COUNT(*),2
) AS Attendance_Rate
FROM Interview_Data;

SELECT COUNT(*) AS No_Show_Count
FROM Interview_Data
WHERE Attendance_Status='No Show';

SELECT COUNT(*) AS Rescheduled_Count
FROM Interview_Data
WHERE Rescheduled='Yes';

SELECT Department,
COUNT(*) AS Total_Interviews
FROM Interview_Data
GROUP BY Department;

SELECT Recruiter_Name,
COUNT(*) AS Interviews_Handled
FROM Interview_Data
GROUP BY Recruiter_Name
ORDER BY Interviews_Handled DESC;

SELECT * FROM Interview_Data;
