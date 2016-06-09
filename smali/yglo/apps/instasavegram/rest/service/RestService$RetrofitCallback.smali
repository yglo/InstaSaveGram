.class public Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;
.super Ljava/lang/Object;
.source "RestService.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyglo/apps/instasavegram/rest/service/RestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RetrofitCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lyglo/apps/instasavegram/model/IGResponse",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private requestId:I

.field final synthetic this$0:Lyglo/apps/instasavegram/rest/service/RestService;


# direct methods
.method public constructor <init>(Lyglo/apps/instasavegram/rest/service/RestService;I)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;->this$0:Lyglo/apps/instasavegram/rest/service/RestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p2, p0, Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;->requestId:I

    .line 230
    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;->this$0:Lyglo/apps/instasavegram/rest/service/RestService;

    iget v1, p0, Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;->requestId:I

    const/4 v2, 0x0

    new-instance v3, Lyglo/apps/instasavegram/rest/service/RestServiceError;

    invoke-direct {v3, p1}, Lyglo/apps/instasavegram/rest/service/RestServiceError;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1, v2, v3}, Lyglo/apps/instasavegram/rest/service/RestService;->sendResponse(ILyglo/apps/instasavegram/model/IGResponse;Lyglo/apps/instasavegram/rest/service/RestServiceError;)V

    .line 242
    return-void
.end method

.method public success(Lyglo/apps/instasavegram/model/IGResponse;Lretrofit/client/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyglo/apps/instasavegram/model/IGResponse",
            "<TT;>;",
            "Lretrofit/client/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;->this$0:Lyglo/apps/instasavegram/rest/service/RestService;

    iget v1, p0, Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;->requestId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lyglo/apps/instasavegram/rest/service/RestService;->sendResponse(ILyglo/apps/instasavegram/model/IGResponse;Lyglo/apps/instasavegram/rest/service/RestServiceError;)V

    .line 236
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 223
    check-cast p1, Lyglo/apps/instasavegram/model/IGResponse;

    invoke-virtual {p0, p1, p2}, Lyglo/apps/instasavegram/rest/service/RestService$RetrofitCallback;->success(Lyglo/apps/instasavegram/model/IGResponse;Lretrofit/client/Response;)V

    return-void
.end method
