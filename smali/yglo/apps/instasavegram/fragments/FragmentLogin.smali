.class public Lyglo/apps/instasavegram/fragments/FragmentLogin;
.super Lyglo/apps/instasavegram/fragments/BaseFragment;
.source "FragmentLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyglo/apps/instasavegram/fragments/FragmentLogin$AuthWebViewClient;
    }
.end annotation


# instance fields
.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/BaseFragment;-><init>()V

    .line 87
    return-void
.end method

.method static synthetic access$100(Lyglo/apps/instasavegram/fragments/FragmentLogin;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentLogin;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentLogin;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 62
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentLogin;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 63
    const-string v1, "WebView"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 65
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 71
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 72
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 73
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 75
    new-instance v1, Lyglo/apps/instasavegram/fragments/FragmentLogin$AuthWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lyglo/apps/instasavegram/fragments/FragmentLogin$AuthWebViewClient;-><init>(Lyglo/apps/instasavegram/fragments/FragmentLogin;Lyglo/apps/instasavegram/fragments/FragmentLogin$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 79
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 80
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 82
    const-string v1, "https://api.instagram.com/oauth/authorize/?client_id=&redirect_uri=http://instagram.com&response_type=token"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 84
    return-object v0
.end method

.method public static newInstance()Lyglo/apps/instasavegram/fragments/FragmentLogin;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lyglo/apps/instasavegram/fragments/FragmentLogin;

    invoke-direct {v0}, Lyglo/apps/instasavegram/fragments/FragmentLogin;-><init>()V

    return-object v0
.end method


# virtual methods
.method public allowBanner()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "FragmentLogin"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 46
    const v0, 0x7f03001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 48
    const v0, 0x7f0e0063

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentLogin;->progressBar:Landroid/widget/ProgressBar;

    .line 50
    const v0, 0x7f0e005f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 51
    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentLogin;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v2}, Lyglo/apps/instasavegram/InstaSaveApplication;->getTypefaceManager()Lyglo/apps/instasavegram/TypefaceManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lyglo/apps/instasavegram/TypefaceManager;->setTypeface(Landroid/view/ViewGroup;)V

    .line 52
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentLogin;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    return-object v1
.end method
