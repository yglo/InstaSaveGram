.class public Lyglo/apps/instasavegram/save/SaveServiceHelper;
.super Ljava/lang/Object;
.source "SaveServiceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveServiceHelper"


# instance fields
.field private application:Lyglo/apps/instasavegram/InstaSaveApplication;

.field private errorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/save/SaveServiceError;",
            ">;"
        }
    .end annotation
.end field

.field private filesSaved:I

.field private mediaScanIntent:Landroid/content/Intent;

.field private notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private notificationManager:Landroid/app/NotificationManager;

.field private runningTasksOnService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/save/SaveTask;",
            ">;"
        }
    .end annotation
.end field

.field private totalFilesToSave:I


# direct methods
.method public constructor <init>(Lyglo/apps/instasavegram/InstaSaveApplication;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->errorList:Ljava/util/List;

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->mediaScanIntent:Landroid/content/Intent;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->runningTasksOnService:Ljava/util/List;

    .line 55
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->notificationManager:Landroid/app/NotificationManager;

    .line 58
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 60
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 61
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 62
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lyglo/apps/instasavegram/BaseActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 63
    return-void
.end method

.method private galleryAddPic(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->mediaScanIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 185
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;

    iget-object v1, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->mediaScanIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/InstaSaveApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method private getFormattedErrorMessage(Lyglo/apps/instasavegram/save/SaveServiceError;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v2, 0x28

    const/4 v4, 0x0

    .line 173
    .line 175
    invoke-virtual {p1}, Lyglo/apps/instasavegram/save/SaveServiceError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 177
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_0
    iget-object v1, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;

    const v2, 0x7f07005c

    invoke-virtual {v1, v2}, Lyglo/apps/instasavegram/InstaSaveApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->errorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleDownloadError(Lyglo/apps/instasavegram/save/SaveServiceServiceHelperEvent;)V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->errorList:Ljava/util/List;

    invoke-virtual {p1}, Lyglo/apps/instasavegram/save/SaveServiceServiceHelperEvent;->getSaveServiceError()Lyglo/apps/instasavegram/save/SaveServiceError;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getAnalytics()Lyglo/apps/instasavegram/Analytics;

    move-result-object v0

    invoke-virtual {p1}, Lyglo/apps/instasavegram/save/SaveServiceServiceHelperEvent;->getSaveServiceError()Lyglo/apps/instasavegram/save/SaveServiceError;

    move-result-object v1

    invoke-virtual {v1}, Lyglo/apps/instasavegram/save/SaveServiceError;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "N/A"

    const-string v3, "SaveServiceHelper"

    invoke-virtual {v0, v1, v2, v3}, Lyglo/apps/instasavegram/Analytics;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private handleFileSaved(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    iget v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->filesSaved:I

    add-int/2addr v0, p1

    iput v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->filesSaved:I

    .line 150
    invoke-direct {p0}, Lyglo/apps/instasavegram/save/SaveServiceHelper;->updateNotification()V

    .line 152
    iget v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->filesSaved:I

    iget v1, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->totalFilesToSave:I

    if-ne v0, v1, :cond_0

    .line 154
    iput v2, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->totalFilesToSave:I

    .line 155
    iput v2, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->filesSaved:I

    .line 157
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->errorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v1, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;

    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->errorList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/save/SaveServiceError;

    invoke-direct {p0, v0}, Lyglo/apps/instasavegram/save/SaveServiceHelper;->getFormattedErrorMessage(Lyglo/apps/instasavegram/save/SaveServiceError;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->errorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    :cond_0
    return-void
.end method

.method private prepareSaveTasks(Ljava/util/List;Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;",
            "Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/save/SaveTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/model/Media;

    .line 105
    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->isImage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->getImages()Lyglo/apps/instasavegram/model/MediaObjects;

    move-result-object v1

    .line 106
    :goto_1
    invoke-virtual {v1}, Lyglo/apps/instasavegram/model/MediaObjects;->getStandardResolution()Lyglo/apps/instasavegram/model/MediaObject;

    move-result-object v1

    invoke-virtual {v1}, Lyglo/apps/instasavegram/model/MediaObject;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 107
    const/16 v1, 0x2e

    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 109
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->getCreatedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lyglo/apps/instasavegram/Utils;->getLocalDateStringFromUTC(J)Ljava/lang/String;

    move-result-object v6

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->getUser()Lyglo/apps/instasavegram/model/User;

    move-result-object v9

    invoke-virtual {v9}, Lyglo/apps/instasavegram/model/User;->getUsername()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lyglo/apps/instasavegram/Utils;->clearString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 113
    const-string v1, "pref_folder_style"

    const-string v7, "1"

    invoke-interface {v3, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 114
    const/4 v7, 0x1

    if-ne v1, v7, :cond_3

    invoke-static {p2}, Lyglo/apps/instasavegram/InstaSaveApplication;->getFolderFromRequestType(Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)Ljava/lang/String;

    move-result-object v1

    .line 116
    :goto_2
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v9}, Lyglo/apps/instasavegram/InstaSaveApplication;->getSavePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lyglo/apps/instasavegram/save/SaveTask;

    invoke-direct {v0, v1, v5}, Lyglo/apps/instasavegram/save/SaveTask;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->runningTasksOnService:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 127
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 105
    :cond_2
    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->getVideos()Lyglo/apps/instasavegram/model/MediaObjects;

    move-result-object v1

    goto/16 :goto_1

    .line 114
    :cond_3
    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->getUser()Lyglo/apps/instasavegram/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lyglo/apps/instasavegram/model/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyglo/apps/instasavegram/Utils;->clearString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 130
    :cond_4
    return-object v2
.end method

.method private startService(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/save/SaveTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;

    const-class v2, Lyglo/apps/instasavegram/save/SaveService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const-string v2, "ARG_SAVE_TASKS"

    move-object v0, p1

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->runningTasksOnService:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/InstaSaveApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 96
    return-void
.end method

.method private updateNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    iget v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->filesSaved:I

    iget v1, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->totalFilesToSave:I

    if-ne v0, v1, :cond_1

    .line 193
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->errorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->errorList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/save/SaveServiceError;

    invoke-direct {p0, v0}, Lyglo/apps/instasavegram/save/SaveServiceHelper;->getFormattedErrorMessage(Lyglo/apps/instasavegram/save/SaveServiceError;)Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    iget-object v1, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 202
    iget-object v1, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 204
    iget v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->filesSaved:I

    int-to-float v0, v0

    iget v1, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->totalFilesToSave:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 205
    iget-object v1, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 207
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget v1, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->totalFilesToSave:I

    iget v2, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->filesSaved:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 209
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 210
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/InstaSaveApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->application:Lyglo/apps/instasavegram/InstaSaveApplication;

    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/InstaSaveApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onEvent(Lyglo/apps/instasavegram/save/SaveServiceServiceHelperEvent;)V
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p1}, Lyglo/apps/instasavegram/save/SaveServiceServiceHelperEvent;->getSaveTask()Lyglo/apps/instasavegram/save/SaveTask;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->runningTasksOnService:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {p1}, Lyglo/apps/instasavegram/save/SaveServiceServiceHelperEvent;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-direct {p0, p1}, Lyglo/apps/instasavegram/save/SaveServiceHelper;->handleDownloadError(Lyglo/apps/instasavegram/save/SaveServiceServiceHelperEvent;)V

    .line 144
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lyglo/apps/instasavegram/save/SaveServiceHelper;->handleFileSaved(I)V

    .line 145
    return-void

    .line 142
    :cond_0
    invoke-virtual {v0}, Lyglo/apps/instasavegram/save/SaveTask;->getLocalFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lyglo/apps/instasavegram/save/SaveServiceHelper;->galleryAddPic(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public saveMedia(Lyglo/apps/instasavegram/model/Media;Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p0, v0, p2}, Lyglo/apps/instasavegram/save/SaveServiceHelper;->saveMediaList(Ljava/util/List;Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)V

    .line 71
    return-void
.end method

.method public saveMediaList(Ljava/util/List;Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;",
            "Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    iget v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->totalFilesToSave:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lyglo/apps/instasavegram/save/SaveServiceHelper;->totalFilesToSave:I

    .line 77
    invoke-direct {p0, p1, p2}, Lyglo/apps/instasavegram/save/SaveServiceHelper;->prepareSaveTasks(Ljava/util/List;Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)Ljava/util/List;

    move-result-object v0

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 79
    if-lez v1, :cond_1

    .line 80
    invoke-direct {p0, v1}, Lyglo/apps/instasavegram/save/SaveServiceHelper;->handleFileSaved(I)V

    .line 84
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 85
    invoke-direct {p0, v0}, Lyglo/apps/instasavegram/save/SaveServiceHelper;->startService(Ljava/util/List;)V

    .line 86
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-direct {p0}, Lyglo/apps/instasavegram/save/SaveServiceHelper;->updateNotification()V

    goto :goto_0
.end method
