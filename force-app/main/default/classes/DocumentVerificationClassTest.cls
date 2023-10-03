@isTest
public class DocumentVerificationTest {
    public static testMethod void testDocumentVerificationMethod() {
        DocumentVerificationClass dc = new DocumentVerificationClass();
        // Test successful verification
        String result1 = dc.documentVerificationMethod(true, true);
        System.assertEquals('Successful verification!', result1);
        // Test incomplete verfication
        String result2 = dc.documentVerificationMethod(false, false);
        System.assertEquals('Incomplete verification.', result2);
        // Test identity verification failed
        String result3 = dc.documentVerificationMethod(false, true);
        System.assertEquals('Identity verification failed.', result3);
        // Test address verification failed
        String result4 = dc.documentVerificationMethod(true, false);
        System.assertEquals('Address verification failed.', result4);
    }
 
    public static testMethod void testValidateCreditEvaluation() {
        DocumentVerificationClass dc = new DocumentVerificationClass();
        // Test successful credit evaluation
        String result1 = dc.validateCreditEvaluation(30000, 700);
        System.assertEquals('Congratulations! You are eligible for a high credit limit.', result1);
        // Test moderate credit limit
        String result2 = dc.validateCreditEvaluation(20000, 600);
        System.assertEquals('You are eligible for a moderate credit limit.', result2);
        // Test failed credit evaluation
        String result3 = dc.validateCreditEvaluation(10000, 500);
        System.assertEquals('You are not eligible for a credit score.', result3);
    }
 
    public static testMethod void testDisbursement() {
        DocumentVerificationClass dc = new DocumentVerificationClass();
        // Test successful disbursement
        String result1 = dc.disbursement(10000, 10000, true);
        System.assertEquals('Vehicle assessment passed. Disbursed amount: 10000', result1);
        // Test failed assessment
        String result2 = dc.disbursement(20000, 10000, true);
        System.assertEquals('Vehicle assessment failed. Loan amount cannot exceed the vehicle value.', result2);
        // Test payment approval
        String result3 = dc.disbursement(10000, 10000, false);
        System.assertEquals('Prompt for payment approval.', result3);
        // Test invalid vendor information
        String result4 = dc.disbursement(null, null, null);
        System.assertEquals('Invalid vendor information.', result4);
    }
}