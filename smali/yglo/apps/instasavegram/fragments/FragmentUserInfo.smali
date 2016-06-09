.class public Lyglo/apps/instasavegram/fragments/FragmentUserInfo;
.super Landroid/support/v4/app/Fragment;
.source "FragmentUserInfo.java"


# static fields
.field private static final USER_ID_ARG:Ljava/lang/String; = "userId"


# instance fields
.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lyglo/apps/instasavegram/fragments/FragmentUserInfo;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lyglo/apps/instasavegram/fragments/FragmentUserInfo;

    invoke-direct {v0}, Lyglo/apps/instasavegram/fragments/FragmentUserInfo;-><init>()V

    .line 21
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 22
    const-string v2, "userId"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/fragments/FragmentUserInfo;->setArguments(Landroid/os/Bundle;)V

    .line 24
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    if-eqz p1, :cond_1

    .line 33
    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfo;->userId:Ljava/lang/String;

    .line 37
    :cond_0
    :goto_0
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfo;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->newInstance(Ljava/lang/String;Z)Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfo;->userId:Ljava/lang/String;

    invoke-static {v1}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->newInstance(Ljava/lang/String;)Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentUserInfo;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 41
    const v3, 0x7f0e0078

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 42
    const v1, 0x7f0e0077

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 43
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 44
    return-void

    .line 34
    :cond_1
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentUserInfo;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentUserInfo;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfo;->userId:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 56
    const v0, 0x7f030020

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 49
    const-string v0, "userId"

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method
