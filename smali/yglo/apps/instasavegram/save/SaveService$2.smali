.class Lyglo/apps/instasavegram/save/SaveService$2;
.super Ljava/lang/Object;
.source "SaveService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/save/SaveService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/save/SaveService;

.field final synthetic val$ex:Ljava/lang/Exception;

.field final synthetic val$saveTask:Lyglo/apps/instasavegram/save/SaveTask;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/save/SaveService;Lyglo/apps/instasavegram/save/SaveTask;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lyglo/apps/instasavegram/save/SaveService$2;->this$0:Lyglo/apps/instasavegram/save/SaveService;

    iput-object p2, p0, Lyglo/apps/instasavegram/save/SaveService$2;->val$saveTask:Lyglo/apps/instasavegram/save/SaveTask;

    iput-object p3, p0, Lyglo/apps/instasavegram/save/SaveService$2;->val$ex:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveService$2;->this$0:Lyglo/apps/instasavegram/save/SaveService;

    iget-object v1, p0, Lyglo/apps/instasavegram/save/SaveService$2;->val$saveTask:Lyglo/apps/instasavegram/save/SaveTask;

    new-instance v2, Lyglo/apps/instasavegram/save/SaveServiceError;

    iget-object v3, p0, Lyglo/apps/instasavegram/save/SaveService$2;->val$ex:Ljava/lang/Exception;

    invoke-direct {v2, v3}, Lyglo/apps/instasavegram/save/SaveServiceError;-><init>(Ljava/lang/Exception;)V

    # invokes: Lyglo/apps/instasavegram/save/SaveService;->sendResponse(Lyglo/apps/instasavegram/save/SaveTask;Lyglo/apps/instasavegram/save/SaveServiceError;)V
    invoke-static {v0, v1, v2}, Lyglo/apps/instasavegram/save/SaveService;->access$000(Lyglo/apps/instasavegram/save/SaveService;Lyglo/apps/instasavegram/save/SaveTask;Lyglo/apps/instasavegram/save/SaveServiceError;)V

    .line 79
    return-void
.end method
