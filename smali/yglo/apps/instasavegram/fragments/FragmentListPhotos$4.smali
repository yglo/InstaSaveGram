.class Lyglo/apps/instasavegram/fragments/FragmentListPhotos$4;
.super Ljava/lang/Object;
.source "FragmentListPhotos.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/fragments/FragmentListPhotos;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$4;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    iput-object p2, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$4;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$4;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getSaveServiceHelper()Lyglo/apps/instasavegram/save/SaveServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$4;->val$list:Ljava/util/List;

    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$4;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;
    invoke-static {v2}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->access$100(Lyglo/apps/instasavegram/fragments/FragmentListPhotos;)Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lyglo/apps/instasavegram/save/SaveServiceHelper;->saveMediaList(Ljava/util/List;Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)V

    .line 424
    return-void
.end method
