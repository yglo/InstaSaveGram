.class public Lyglo/apps/instasavegram/save/SaveService;
.super Landroid/app/IntentService;
.source "SaveService.java"


# static fields
.field public static final ARG_SAVE_TASKS:Ljava/lang/String; = "ARG_SAVE_TASKS"

.field private static final TAG:Ljava/lang/String; = "SaveService"


# instance fields
.field private data:[B

.field private mainThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "SaveService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lyglo/apps/instasavegram/save/SaveService;Lyglo/apps/instasavegram/save/SaveTask;Lyglo/apps/instasavegram/save/SaveServiceError;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lyglo/apps/instasavegram/save/SaveService;->sendResponse(Lyglo/apps/instasavegram/save/SaveTask;Lyglo/apps/instasavegram/save/SaveServiceError;)V

    return-void
.end method

.method private sendResponse(Lyglo/apps/instasavegram/save/SaveTask;Lyglo/apps/instasavegram/save/SaveServiceError;)V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lyglo/apps/instasavegram/save/SaveServiceServiceHelperEvent;

    invoke-direct {v0, p1, p2}, Lyglo/apps/instasavegram/save/SaveServiceServiceHelperEvent;-><init>(Lyglo/apps/instasavegram/save/SaveTask;Lyglo/apps/instasavegram/save/SaveServiceError;)V

    .line 120
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method private startDownload(Ljava/lang/String;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 89
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 90
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 92
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 96
    :goto_0
    iget-object v2, p0, Lyglo/apps/instasavegram/save/SaveService;->data:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 97
    iget-object v3, p0, Lyglo/apps/instasavegram/save/SaveService;->data:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 103
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 104
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 41
    const-string v0, "SaveService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lyglo/apps/instasavegram/save/SaveService;->data:[B

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lyglo/apps/instasavegram/save/SaveService;->mainThreadHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 114
    const-string v0, "SaveService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 50
    const-string v0, "SaveService"

    const-string v1, "onHandleIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 55
    const-string v1, "ARG_SAVE_TASKS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 56
    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/save/SaveTask;

    .line 60
    :try_start_0
    invoke-virtual {v0}, Lyglo/apps/instasavegram/save/SaveTask;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lyglo/apps/instasavegram/save/SaveTask;->getLocalFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lyglo/apps/instasavegram/save/SaveService;->startDownload(Ljava/lang/String;Ljava/io/File;)V

    .line 62
    iget-object v1, p0, Lyglo/apps/instasavegram/save/SaveService;->mainThreadHandler:Landroid/os/Handler;

    new-instance v3, Lyglo/apps/instasavegram/save/SaveService$1;

    invoke-direct {v3, p0, v0}, Lyglo/apps/instasavegram/save/SaveService$1;-><init>(Lyglo/apps/instasavegram/save/SaveService;Lyglo/apps/instasavegram/save/SaveTask;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 73
    iget-object v3, p0, Lyglo/apps/instasavegram/save/SaveService;->mainThreadHandler:Landroid/os/Handler;

    new-instance v4, Lyglo/apps/instasavegram/save/SaveService$2;

    invoke-direct {v4, p0, v0, v1}, Lyglo/apps/instasavegram/save/SaveService$2;-><init>(Lyglo/apps/instasavegram/save/SaveService;Lyglo/apps/instasavegram/save/SaveTask;Ljava/lang/Exception;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method
