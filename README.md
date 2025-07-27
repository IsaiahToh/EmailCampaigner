# Email Campaign Manager

A modern, responsive web application for managing bulk email campaigns with drag-and-drop file uploads and real-time progress tracking.

## Features

- ✅ **Excel & CSV Support**: Upload email lists from .xlsx, .xls, or .csv files
- ✅ **Dual Flyer Types**: Support for both image flyers and HTML email templates
- ✅ **Drag & Drop Interface**: Modern, intuitive file upload experience
- ✅ **Real-time Progress**: Live tracking of email sending progress
- ✅ **Email Validation**: Automatic validation and duplicate removal
- ✅ **Responsive Design**: Works on desktop, tablet, and mobile devices
- ✅ **EmailJS Integration**: Ready for real email sending with proper configuration

## How to Use

1. **Upload Email List**: Drag & drop or browse for your Excel/CSV file containing email addresses
2. **Create Flyer**: Choose between:
   - **Image Flyer**: Upload a promotional image
   - **HTML Flyer**: Create custom HTML email content
3. **Configure Settings**: Set sender name, email, subject, and reply-to address
4. **Send Campaign**: Click "Send Emails" to start your campaign
5. **Monitor Progress**: Watch real-time sending status and success/failure rates

## Setting Up Real Email Sending

Currently, the app runs in demo mode. To send real emails:

1. **Sign up for EmailJS**: Visit [emailjs.com](https://www.emailjs.com/) and create a free account
2. **Create a Service**: Connect your email provider (Gmail, Outlook, SendGrid, etc.)
3. **Create a Template**: Design your email template with placeholders
4. **Set Environment Variables**: For security, credentials are stored as environment variables:

### Local Development:
```bash
export EMAILJS_USER_ID="your_actual_user_id"
export EMAILJS_SERVICE_ID="your_service_id"
export EMAILJS_TEMPLATE_ID="your_template_id"
npm run build
npm start
```

### Render Deployment:
1. In your Render dashboard, go to your app settings
2. Add these environment variables:
   - `EMAILJS_USER_ID`: Your EmailJS User ID
   - `EMAILJS_SERVICE_ID`: Your service ID
   - `EMAILJS_TEMPLATE_ID`: Your template ID
3. Redeploy your app

⚠️ **Security Note**: Never commit your actual EmailJS credentials to GitHub!

## File Formats Supported

### Email Lists
- **Excel Files**: .xlsx, .xls (emails should be in the first column)
- **CSV Files**: .csv (one email per line)

### Flyer Images
- **Image Types**: .jpg, .jpeg, .png, .gif, .webp
- **Recommended Size**: 600px width for optimal email display

## Technical Features

- **Modern Tech Stack**: HTML5, CSS3 (Tailwind), Vanilla JavaScript
- **External Libraries**: 
  - XLSX.js for Excel file parsing
  - EmailJS for email delivery
  - Font Awesome for icons
  - Tailwind CSS for styling
- **No Backend Required**: Runs entirely in the browser
- **Rate Limiting**: Built-in delays to prevent email service rate limits
- **Error Handling**: Comprehensive error catching and user feedback

## Demo Files

- `sample_emails.csv`: A sample CSV file with test email addresses for demonstration

## Browser Compatibility

- Chrome 60+
- Firefox 55+
- Safari 12+
- Edge 79+

## Security Notes

- Email addresses are processed locally in your browser
- No data is sent to external servers (except through EmailJS when configured)
- Consider privacy regulations (GDPR, CAN-SPAM) when sending bulk emails
- Always include unsubscribe options in your campaigns

## License

This project is open source and available under the MIT License.
