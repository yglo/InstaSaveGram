.class Lyglo/apps/instasavegram/fragments/FragmentLowBar$1;
.super Ljava/lang/Object;
.source "FragmentLowBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/fragments/FragmentLowBar;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/fragments/FragmentLowBar;

.field final synthetic val$ba:Lyglo/apps/instasavegram/BaseActivity;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/fragments/FragmentLowBar;Lyglo/apps/instasavegram/BaseActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentLowBar$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentLowBar;

    iput-object p2, p0, Lyglo/apps/instasavegram/fragments/FragmentLowBar$1;->val$ba:Lyglo/apps/instasavegram/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentLowBar$1;->val$ba:Lyglo/apps/instasavegram/BaseActivity;

    sget-object v1, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->FEED:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/BaseActivity;->setActiveFragment(Lyglo/apps/instasavegram/BaseActivity$FragmentType;)V

    .line 59
    return-void
.end method
