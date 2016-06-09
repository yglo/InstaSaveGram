.class Lyglo/apps/instasavegram/fragments/FragmentListPhotos$3;
.super Ljava/lang/Object;
.source "FragmentListPhotos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->responseSuccess(Lyglo/apps/instasavegram/model/IGResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/fragments/FragmentListPhotos;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$3;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$3;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestMoreData()V

    .line 343
    return-void
.end method
