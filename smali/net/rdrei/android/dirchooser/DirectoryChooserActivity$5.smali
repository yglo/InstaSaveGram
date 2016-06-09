.class Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$5;
.super Landroid/os/FileObserver;
.source "DirectoryChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->createFileObserver(Ljava/lang/String;)Landroid/os/FileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;


# direct methods
.method constructor <init>(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$5;->this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 312
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$5;->this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    const-string v1, "FileObserver received event %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    # invokes: Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->access$300(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$5;->this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    new-instance v1, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$5$1;

    invoke-direct {v1, p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$5$1;-><init>(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$5;)V

    invoke-virtual {v0, v1}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 322
    return-void
.end method
