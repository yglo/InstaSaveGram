.class public Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;
.super Ljava/lang/Object;
.source "RestServiceServiceHelperEvent.java"


# instance fields
.field private error:Lyglo/apps/instasavegram/rest/service/RestServiceError;

.field private igResponse:Lyglo/apps/instasavegram/model/IGResponse;

.field private requestId:I


# direct methods
.method public constructor <init>(ILyglo/apps/instasavegram/model/IGResponse;Lyglo/apps/instasavegram/rest/service/RestServiceError;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->requestId:I

    .line 17
    iput-object p2, p0, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->igResponse:Lyglo/apps/instasavegram/model/IGResponse;

    .line 18
    iput-object p3, p0, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->error:Lyglo/apps/instasavegram/rest/service/RestServiceError;

    .line 19
    return-void
.end method


# virtual methods
.method public getError()Lyglo/apps/instasavegram/rest/service/RestServiceError;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->error:Lyglo/apps/instasavegram/rest/service/RestServiceError;

    return-object v0
.end method

.method public getIgResponse()Lyglo/apps/instasavegram/model/IGResponse;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->igResponse:Lyglo/apps/instasavegram/model/IGResponse;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->requestId:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->igResponse:Lyglo/apps/instasavegram/model/IGResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceServiceHelperEvent;->error:Lyglo/apps/instasavegram/rest/service/RestServiceError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
