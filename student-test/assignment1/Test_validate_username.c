#include "unity.h"
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

void test_validate_my_username(void)
{
 
    FILE *f = fopen("conf/username.txt", "r");
    if (!f) {
        f = fopen("../conf/username.txt", "r");
    }
    if (!f) {
        f = fopen("../../conf/username.txt", "r");
    }

    TEST_ASSERT_NOT_NULL_MESSAGE(f, "Could not open conf/username.txt");

    char username[128];
    memset(username, 0, sizeof(username));
    if (fgets(username, sizeof(username), f) != NULL) {
        
        username[strcspn(username, "\r\n")] = 0;
    }
    fclose(f);

    
    TEST_ASSERT_GREATER_THAN_INT(0, (int)strlen(username));
    TEST_ASSERT_EQUAL_STRING("ela-ben-hamed", username);
}
