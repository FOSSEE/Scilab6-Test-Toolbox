#ifndef __TEST_TOOLBOX_GW_HXX__
#define __TEST_TOOLBOX_GW_HXX__

#ifdef _MSC_VER
#ifdef TEST_TOOLBOX_GW_EXPORTS
#define TEST_TOOLBOX_GW_IMPEXP __declspec(dllexport)
#else
#define TEST_TOOLBOX_GW_IMPEXP __declspec(dllimport)
#endif
#else
#define TEST_TOOLBOX_GW_IMPEXP
#endif

extern "C" TEST_TOOLBOX_GW_IMPEXP int test_toolbox(wchar_t* _pwstFuncName);



#endif /* __TEST_TOOLBOX_GW_HXX__ */
