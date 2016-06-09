.class Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader$1;
.super Ljava/lang/Object;
.source "FragmentUserInfoHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->activityInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->userId:Ljava/lang/String;
    invoke-static {v1}, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->access$000(Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lyglo/apps/instasavegram/fragments/ActivityInterface;->setFragmentViewUserInfoVisible(Ljava/lang/String;)V

    .line 89
    return-void
.end method
