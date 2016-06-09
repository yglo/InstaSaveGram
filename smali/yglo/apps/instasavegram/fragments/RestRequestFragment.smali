.class public abstract Lyglo/apps/instasavegram/fragments/RestRequestFragment;
.super Lyglo/apps/instasavegram/fragments/BaseFragment;
.source "RestRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lyglo/apps/instasavegram/fragments/BaseFragment;"
    }
.end annotation


# instance fields
.field protected accessToken:Ljava/lang/String;

.field protected data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected isRequestingData:Z

.field protected requestId:I

.field protected restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

.field protected restServiceHelperCallback:Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/BaseFragment;-><init>()V

    .line 106
    return-void
.end method


# virtual methods
.method protected doOnStartRequest()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->isRequestingData:Z

    .line 72
    return-void
.end method

.method protected doSearchRequest(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->isRequestingData:Z

    .line 77
    return-void
.end method

.method protected abstract isDataEmpty()Z
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Lyglo/apps/instasavegram/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->isRequestingData:Z

    .line 28
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getRestServiceHelper()Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    .line 29
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->accessToken:Ljava/lang/String;

    .line 31
    new-instance v0, Lyglo/apps/instasavegram/fragments/RestRequestFragment$1;

    invoke-direct {v0, p0}, Lyglo/apps/instasavegram/fragments/RestRequestFragment$1;-><init>(Lyglo/apps/instasavegram/fragments/RestRequestFragment;)V

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->restServiceHelperCallback:Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;

    .line 47
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Lyglo/apps/instasavegram/fragments/BaseFragment;->onStart()V

    .line 53
    iget-boolean v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->isRequestingData:Z

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    iget v1, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->requestId:I

    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->restServiceHelperCallback:Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;

    invoke-virtual {v0, v1, v2}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->registerCallback(ILyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->isDataEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->doOnStartRequest()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lyglo/apps/instasavegram/fragments/BaseFragment;->onStop()V

    .line 63
    iget-boolean v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->isRequestingData:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    iget v1, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->requestId:I

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->unregisterCallback(I)V

    .line 65
    :cond_0
    return-void
.end method

.method protected abstract responseFailure(Lyglo/apps/instasavegram/rest/service/RestServiceError;)V
.end method

.method protected abstract responseSuccess(Lyglo/apps/instasavegram/model/IGResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyglo/apps/instasavegram/model/IGResponse",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method protected treatRequestExeptions(Lyglo/apps/instasavegram/rest/service/RestServiceError;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 86
    if-eqz p2, :cond_0

    .line 90
    sget-object v0, Lyglo/apps/instasavegram/fragments/RestRequestFragment$2;->$SwitchMap$yglo$apps$instasavegram$rest$service$RestServiceError$ErrorType:[I

    invoke-virtual {p1}, Lyglo/apps/instasavegram/rest/service/RestServiceError;->getType()Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    invoke-virtual {p1}, Lyglo/apps/instasavegram/rest/service/RestServiceError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    :cond_0
    invoke-virtual {p1}, Lyglo/apps/instasavegram/rest/service/RestServiceError;->getType()Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    move-result-object v0

    sget-object v1, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->HTTP:Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/rest/service/RestServiceError$ErrorType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p1}, Lyglo/apps/instasavegram/rest/service/RestServiceError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OAuth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lyglo/apps/instasavegram/rest/service/RestServiceError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authentication"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    :cond_1
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->activityInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

    invoke-interface {v0}, Lyglo/apps/instasavegram/fragments/ActivityInterface;->logout()V

    .line 119
    :cond_2
    return-void

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-virtual {p1}, Lyglo/apps/instasavegram/rest/service/RestServiceError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APINotAllowedError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lyglo/apps/instasavegram/rest/service/RestServiceError;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1}, Lyglo/apps/instasavegram/rest/service/RestServiceError;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 102
    :pswitch_2
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
