#ifndef __LIBTEST_TOOLBOX_GW_HXX__
#define __LIBTEST_TOOLBOX_GW_HXX__

#ifdef _MSC_VER
#ifdef LIBTEST_TOOLBOX_GW_EXPORTS
#define LIBTEST_TOOLBOX_GW_IMPEXP __declspec(dllexport)
#else
#define LIBTEST_TOOLBOX_GW_IMPEXP __declspec(dllimport)
#endif
#else
#define LIBTEST_TOOLBOX_GW_IMPEXP
#endif

extern "C" LIBTEST_TOOLBOX_GW_IMPEXP int libtest_toolbox(wchar_t* _pwstFuncName);



#endif /* __LIBTEST_TOOLBOX_GW_HXX__ */
