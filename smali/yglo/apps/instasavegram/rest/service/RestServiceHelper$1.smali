.class Lyglo/apps/instasavegram/rest/service/RestServiceHelper$1;
.super Ljava/lang/Object;
.source "RestServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->checkIfShouldStopService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/rest/service/RestServiceHelper;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper$1;->this$0:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper$1;->this$0:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    # getter for: Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;
    invoke-static {v0}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->access$000(Lyglo/apps/instasavegram/rest/service/RestServiceHelper;)Lyglo/apps/instasavegram/InstaSaveApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lyglo/apps/instasavegram/rest/service/RestServiceHelper$1;->this$0:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    # getter for: Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;
    invoke-static {v2}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->access$000(Lyglo/apps/instasavegram/rest/service/RestServiceHelper;)Lyglo/apps/instasavegram/InstaSaveApplication;

    move-result-object v2

    const-class v3, Lyglo/apps/instasavegram/rest/service/RestService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/InstaSaveApplication;->stopService(Landroid/content/Intent;)Z

    .line 199
    return-void
.end method
