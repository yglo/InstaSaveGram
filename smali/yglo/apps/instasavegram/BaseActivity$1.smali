.class Lyglo/apps/instasavegram/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/BaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/BaseActivity;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/BaseActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lyglo/apps/instasavegram/BaseActivity$1;->this$0:Lyglo/apps/instasavegram/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lyglo/apps/instasavegram/BaseActivity$1;->this$0:Lyglo/apps/instasavegram/BaseActivity;

    # invokes: Lyglo/apps/instasavegram/BaseActivity;->updateArrowBackNavigation()V
    invoke-static {v0}, Lyglo/apps/instasavegram/BaseActivity;->access$000(Lyglo/apps/instasavegram/BaseActivity;)V

    .line 64
    return-void
.end method
