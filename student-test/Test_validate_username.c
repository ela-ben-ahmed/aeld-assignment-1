#include "unity.h"
#include <stdbool.h>
#include <stdlib.h>


bool autotest_validate_username(void);

void test_validate_username(void)
{
    
    TEST_ASSERT_TRUE_MESSAGE(autotest_validate_username(), "Username validation failed!");
}
