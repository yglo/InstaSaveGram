.class public Lyglo/apps/instasavegram/ZipTask;
.super Landroid/os/AsyncTask;
.source "ZipTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private dirToZip:Ljava/io/File;

.field private instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

.field private progress:I

.field private progressDialog:Landroid/app/ProgressDialog;

.field private zipDestination:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lyglo/apps/instasavegram/InstaSaveApplication;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    iput-object p1, p0, Lyglo/apps/instasavegram/ZipTask;->activity:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lyglo/apps/instasavegram/ZipTask;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lyglo/apps/instasavegram/ZipTask;)Ljava/io/File;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->zipDestination:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lyglo/apps/instasavegram/ZipTask;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private countFilesToZip(Ljava/io/File;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 118
    .line 120
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_2

    .line 123
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 125
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    invoke-direct {p0, v4}, Lyglo/apps/instasavegram/ZipTask;->countFilesToZip(Ljava/io/File;)I

    move-result v4

    add-int/2addr v0, v4

    .line 123
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_1
    invoke-direct {p0, v4}, Lyglo/apps/instasavegram/ZipTask;->includeFileInZip(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    :cond_2
    return v0
.end method

.method private createSendConfirmationDialog()V
    .locals 3

    .prologue
    .line 177
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lyglo/apps/instasavegram/ZipTask;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070063

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 180
    const v1, 0x7f070050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    const v1, 0x7f070068

    new-instance v2, Lyglo/apps/instasavegram/ZipTask$1;

    invoke-direct {v2, p0}, Lyglo/apps/instasavegram/ZipTask$1;-><init>(Lyglo/apps/instasavegram/ZipTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 195
    return-void
.end method

.method private includeFileInZip(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startZip(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 107
    invoke-direct {p0, p1, p1, v0}, Lyglo/apps/instasavegram/ZipTask;->zipDirectory(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V

    .line 108
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 109
    return-void
.end method

.method private zipDirectory(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 140
    if-eqz v2, :cond_2

    .line 142
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 144
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 145
    invoke-direct {p0, v4, p2, p3}, Lyglo/apps/instasavegram/ZipTask;->zipDirectory(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V

    .line 142
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    invoke-direct {p0, v4}, Lyglo/apps/instasavegram/ZipTask;->includeFileInZip(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    invoke-direct {p0, v4, p2, p3}, Lyglo/apps/instasavegram/ZipTask;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V

    .line 150
    iget v4, p0, Lyglo/apps/instasavegram/ZipTask;->progress:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lyglo/apps/instasavegram/ZipTask;->progress:I

    .line 151
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    iget v5, p0, Lyglo/apps/instasavegram/ZipTask;->progress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v4}, Lyglo/apps/instasavegram/ZipTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 155
    :cond_2
    return-void
.end method

.method private zipFile(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 162
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 163
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p3, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 165
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 167
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 170
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 171
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->dirToZip:Ljava/io/File;

    iget-object v1, p0, Lyglo/apps/instasavegram/ZipTask;->zipDestination:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lyglo/apps/instasavegram/ZipTask;->startZip(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lyglo/apps/instasavegram/ZipTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 87
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lyglo/apps/instasavegram/ZipTask;->createSendConfirmationDialog()V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lyglo/apps/instasavegram/ZipTask;->activity:Landroid/app/Activity;

    const v2, 0x7f07006a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getAnalytics()Lyglo/apps/instasavegram/Analytics;

    move-result-object v0

    const-string v1, "ZipError"

    const-string v2, "IOException"

    const-string v3, "ZipTask"

    invoke-virtual {v0, v1, v2, v3}, Lyglo/apps/instasavegram/Analytics;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lyglo/apps/instasavegram/ZipTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 43
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getSavePath()Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lyglo/apps/instasavegram/ZipTask;->dirToZip:Ljava/io/File;

    .line 47
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 48
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backup_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d_%m_%y_%H%M"

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lyglo/apps/instasavegram/ZipTask;->zipDestination:Ljava/io/File;

    .line 53
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lyglo/apps/instasavegram/ZipTask;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 54
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 55
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lyglo/apps/instasavegram/ZipTask;->activity:Landroid/app/Activity;

    const v2, 0x7f07006b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 57
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 58
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 60
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lyglo/apps/instasavegram/ZipTask;->dirToZip:Ljava/io/File;

    invoke-direct {p0, v1}, Lyglo/apps/instasavegram/ZipTask;->countFilesToZip(Ljava/io/File;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 61
    iput v4, p0, Lyglo/apps/instasavegram/ZipTask;->progress:I

    .line 62
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->progressDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lyglo/apps/instasavegram/ZipTask;->progress:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 64
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 65
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 99
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->progressDialog:Landroid/app/ProgressDialog;

    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 100
    iget-object v0, p0, Lyglo/apps/instasavegram/ZipTask;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lyglo/apps/instasavegram/ZipTask;->activity:Landroid/app/Activity;

    const v2, 0x7f07006c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lyglo/apps/instasavegram/ZipTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
