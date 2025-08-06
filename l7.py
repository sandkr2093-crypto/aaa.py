schedule = {
    'Monday': 'Team Meeting',
    'Tuesday': 'Project Work',
    'Wednesday': 'Client Call',
    'Thursday': 'Code Review',
    'Friday': 'Deployment'
}
day = input("enter the day")
if day in schedule:
    print("Activity on day",schedule[day])
else:
    print("day not found")
