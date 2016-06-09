.class Lyglo/apps/instasavegram/fragments/RestRequestFragment$1;
.super Ljava/lang/Object;
.source "RestRequestFragment.java"

# interfaces
.implements Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/fragments/RestRequestFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/fragments/RestRequestFragment;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/fragments/RestRequestFragment;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment$1;->this$0:Lyglo/apps/instasavegram/fragments/RestRequestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lyglo/apps/instasavegram/rest/service/RestServiceError;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment$1;->this$0:Lyglo/apps/instasavegram/fragments/RestRequestFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->isRequestingData:Z

    .line 44
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment$1;->this$0:Lyglo/apps/instasavegram/fragments/RestRequestFragment;

    invoke-virtual {v0, p1}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->responseFailure(Lyglo/apps/instasavegram/rest/service/RestServiceError;)V

    .line 45
    return-void
.end method

.method public success(Lyglo/apps/instasavegram/model/IGResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyglo/apps/instasavegram/model/IGResponse",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment$1;->this$0:Lyglo/apps/instasavegram/fragments/RestRequestFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->isRequestingData:Z

    .line 37
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/RestRequestFragment$1;->this$0:Lyglo/apps/instasavegram/fragments/RestRequestFragment;

    invoke-virtual {v0, p1}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->responseSuccess(Lyglo/apps/instasavegram/model/IGResponse;)V

    .line 38
    return-void
.end method
