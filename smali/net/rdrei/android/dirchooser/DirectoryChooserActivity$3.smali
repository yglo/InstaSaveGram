.class Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$3;
.super Ljava/lang/Object;
.source "DirectoryChooserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;


# direct methods
.method constructor <init>(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$3;->this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$3;->this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    const-string v1, "Selected index: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    # invokes: Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->access$300(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$3;->this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    # getter for: Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFilesInDir:[Ljava/io/File;
    invoke-static {v0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->access$400(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$3;->this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    # getter for: Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFilesInDir:[Ljava/io/File;
    invoke-static {v0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->access$400(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_0

    .line 119
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$3;->this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    iget-object v1, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$3;->this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    # getter for: Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFilesInDir:[Ljava/io/File;
    invoke-static {v1}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->access$400(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)[Ljava/io/File;

    move-result-object v1

    aget-object v1, v1, p3

    # invokes: Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->changeDirectory(Ljava/io/File;)V
    invoke-static {v0, v1}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->access$500(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;Ljava/io/File;)V

    .line 121
    :cond_0
    return-void
.end method
