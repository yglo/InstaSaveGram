.class Lyglo/apps/instasavegram/fragments/FragmentViewBig$2;
.super Ljava/lang/Object;
.source "FragmentViewBig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/fragments/FragmentViewBig;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/fragments/FragmentViewBig;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/fragments/FragmentViewBig;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig$2;->this$0:Lyglo/apps/instasavegram/fragments/FragmentViewBig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig$2;->this$0:Lyglo/apps/instasavegram/fragments/FragmentViewBig;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getSaveServiceHelper()Lyglo/apps/instasavegram/save/SaveServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig$2;->this$0:Lyglo/apps/instasavegram/fragments/FragmentViewBig;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentViewBig;->media:Lyglo/apps/instasavegram/model/Media;
    invoke-static {v1}, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->access$100(Lyglo/apps/instasavegram/fragments/FragmentViewBig;)Lyglo/apps/instasavegram/model/Media;

    move-result-object v1

    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig$2;->this$0:Lyglo/apps/instasavegram/fragments/FragmentViewBig;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentViewBig;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;
    invoke-static {v2}, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->access$200(Lyglo/apps/instasavegram/fragments/FragmentViewBig;)Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lyglo/apps/instasavegram/save/SaveServiceHelper;->saveMedia(Lyglo/apps/instasavegram/model/Media;Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)V

    .line 176
    return-void
.end method
