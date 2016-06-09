.class Lyglo/apps/instasavegram/ZipTask$1;
.super Ljava/lang/Object;
.source "ZipTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/ZipTask;->createSendConfirmationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/ZipTask;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/ZipTask;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lyglo/apps/instasavegram/ZipTask$1;->this$0:Lyglo/apps/instasavegram/ZipTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lyglo/apps/instasavegram/ZipTask$1;->this$0:Lyglo/apps/instasavegram/ZipTask;

    # getter for: Lyglo/apps/instasavegram/ZipTask;->zipDestination:Ljava/io/File;
    invoke-static {v3}, Lyglo/apps/instasavegram/ZipTask;->access$000(Lyglo/apps/instasavegram/ZipTask;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lyglo/apps/instasavegram/ZipTask$1;->this$0:Lyglo/apps/instasavegram/ZipTask;

    # getter for: Lyglo/apps/instasavegram/ZipTask;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lyglo/apps/instasavegram/ZipTask;->access$100(Lyglo/apps/instasavegram/ZipTask;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lyglo/apps/instasavegram/ZipTask$1;->this$0:Lyglo/apps/instasavegram/ZipTask;

    # getter for: Lyglo/apps/instasavegram/ZipTask;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lyglo/apps/instasavegram/ZipTask;->access$100(Lyglo/apps/instasavegram/ZipTask;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f070062

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void
.end method
