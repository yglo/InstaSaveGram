.class Lyglo/apps/instasavegram/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/BaseActivity;->createAboutDialog()V
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
    .line 238
    iput-object p1, p0, Lyglo/apps/instasavegram/BaseActivity$2;->this$0:Lyglo/apps/instasavegram/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lyglo/apps/instasavegram/BaseActivity$2;->this$0:Lyglo/apps/instasavegram/BaseActivity;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/BaseActivity;->rateOnMarket()V

    .line 243
    return-void
.end method
