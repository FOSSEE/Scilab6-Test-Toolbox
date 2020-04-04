#include <wchar.h>
#include "test_toolbox.hxx"
extern "C"
{
#include "test_toolbox.h"
#include "addfunction.h"
}

#define MODULE_NAME L"test_toolbox"

int test_toolbox(wchar_t* _pwstFuncName)
{
    if(wcscmp(_pwstFuncName, L"multiply") == 0){ addCFunction(L"multiply", &sci_multiply, MODULE_NAME); }

    return 1;
}
