.class Lyglo/apps/instasavegram/fragments/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Lyglo/apps/instasavegram/fragments/ActivityInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyglo/apps/instasavegram/fragments/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/fragments/BaseFragment;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/fragments/BaseFragment;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/BaseFragment$1;->this$0:Lyglo/apps/instasavegram/fragments/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createLongTouchHelpDialog()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public createSaveDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public getInstaSaveApplication()Lyglo/apps/instasavegram/InstaSaveApplication;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/BaseFragment$1;->this$0:Lyglo/apps/instasavegram/fragments/BaseFragment;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/BaseFragment;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    return-object v0
.end method

.method public logout()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onAcessTokenRetrieved(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public setActiveFragment(Lyglo/apps/instasavegram/BaseActivity$FragmentType;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public setBannerVisibility(Z)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public setFragmentViewPhotoVisible(Lyglo/apps/instasavegram/model/Media;Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public setFragmentViewUserInfoVisible(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
