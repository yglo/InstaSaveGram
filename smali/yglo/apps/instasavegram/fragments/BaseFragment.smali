.class public abstract Lyglo/apps/instasavegram/fragments/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected activityInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

.field private dummyInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

.field protected instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 17
    new-instance v0, Lyglo/apps/instasavegram/fragments/BaseFragment$1;

    invoke-direct {v0, p0}, Lyglo/apps/instasavegram/fragments/BaseFragment$1;-><init>(Lyglo/apps/instasavegram/fragments/BaseFragment;)V

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/BaseFragment;->dummyInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

    return-void
.end method


# virtual methods
.method public allowBanner()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getName()Ljava/lang/String;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/BaseFragment;->getName()Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 88
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/BaseFragment;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/InstaSaveApplication;->getAnalytics()Lyglo/apps/instasavegram/Analytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyglo/apps/instasavegram/Analytics;->reportScreenView(Ljava/lang/String;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/BaseFragment;->activityInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/BaseFragment;->allowBanner()Z

    move-result v1

    invoke-interface {v0, v1}, Lyglo/apps/instasavegram/fragments/ActivityInterface;->setBannerVisibility(Z)V

    .line 91
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    check-cast p1, Lyglo/apps/instasavegram/fragments/ActivityInterface;

    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/BaseFragment;->activityInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

    .line 71
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/BaseFragment;->activityInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

    invoke-interface {v0}, Lyglo/apps/instasavegram/fragments/ActivityInterface;->getInstaSaveApplication()Lyglo/apps/instasavegram/InstaSaveApplication;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/BaseFragment;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    .line 72
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 78
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/BaseFragment;->dummyInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/BaseFragment;->activityInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

    .line 79
    return-void
.end method
