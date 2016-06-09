.class Lyglo/apps/instasavegram/fragments/FragmentLogin$AuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "FragmentLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyglo/apps/instasavegram/fragments/FragmentLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthWebViewClient"
.end annotation


# instance fields
.field private acessToken:Ljava/lang/String;

.field final synthetic this$0:Lyglo/apps/instasavegram/fragments/FragmentLogin;


# direct methods
.method private constructor <init>(Lyglo/apps/instasavegram/fragments/FragmentLogin;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentLogin$AuthWebViewClient;->this$0:Lyglo/apps/instasavegram/fragments/FragmentLogin;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyglo/apps/instasavegram/fragments/FragmentLogin;Lyglo/apps/instasavegram/fragments/FragmentLogin$1;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lyglo/apps/instasavegram/fragments/FragmentLogin$AuthWebViewClient;-><init>(Lyglo/apps/instasavegram/fragments/FragmentLogin;)V

    return-void
.end method

.method private reportError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 162
    const-string v0, "http://instagram.com"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentLogin$AuthWebViewClient;->this$0:Lyglo/apps/instasavegram/fragments/FragmentLogin;

    iget-object v1, v1, Lyglo/apps/instasavegram/fragments/FragmentLogin;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/InstaSaveApplication;->getAnalytics()Lyglo/apps/instasavegram/Analytics;

    move-result-object v1

    const-string v2, "LoginError"

    const-string v3, "FragmentLogin"

    invoke-virtual {v1, v2, v0, v3}, Lyglo/apps/instasavegram/Analytics;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentLogin$AuthWebViewClient;->this$0:Lyglo/apps/instasavegram/fragments/FragmentLogin;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentLogin;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lyglo/apps/instasavegram/fragments/FragmentLogin;->access$100(Lyglo/apps/instasavegram/fragments/FragmentLogin;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 171
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 127
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 129
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentLogin$AuthWebViewClient;->this$0:Lyglo/apps/instasavegram/fragments/FragmentLogin;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentLogin;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lyglo/apps/instasavegram/fragments/FragmentLogin;->access$100(Lyglo/apps/instasavegram/fragments/FragmentLogin;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 131
    const-string v0, "http://instagram.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const-string v0, "error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iput-object v3, p0, Lyglo/apps/instasavegram/fragments/FragmentLogin$AuthWebViewClient;->acessToken:Ljava/lang/String;

    .line 136
    invoke-direct {p0, p2}, Lyglo/apps/instasavegram/fragments/FragmentLogin$AuthWebViewClient;->reportError(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 140
    const-string v0, "https://api.instagram.com/oauth/authorize/?client_id=&redirect_uri=http://instagram.com&response_type=token"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 156
    :cond_0
    :goto_0
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentLogin$AuthWebViewClient;->this$0:Lyglo/apps/instasavegram/fragments/FragmentLogin;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentLogin;->activityInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentLogin$AuthWebViewClient;->acessToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Lyglo/apps/instasavegram/fragments/ActivityInterface;->onAcessTokenRetrieved(Ljava/lang/String;)V

    .line 158
    :cond_1
    return-void

    .line 142
    :cond_2
    const-string v0, "access_token"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 146
    array-length v1, v0

    if-le v1, v2, :cond_3

    .line 148
    aget-object v0, v0, v2

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentLogin$AuthWebViewClient;->acessToken:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_3
    iput-object v3, p0, Lyglo/apps/instasavegram/fragments/FragmentLogin$AuthWebViewClient;->acessToken:Ljava/lang/String;

    goto :goto_0
.end method
