.class public Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "DirectoryChooserActivity.java"


# static fields
.field public static final EXTRA_NEW_DIR_NAME:Ljava/lang/String; = "directory_name"

.field public static final EXTRA_START_DIR:Ljava/lang/String; = "start_directory"

.field public static final RESULT_CODE_DIR_SELECTED:I = 0x1

.field public static final RESULT_SELECTED_DIR:Ljava/lang/String; = "selected_dir"

.field private static final TAG:Ljava/lang/String; = "DirectoryChooser"


# instance fields
.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnConfirm:Landroid/widget/Button;

.field private mBtnNavUp:Landroid/widget/ImageButton;

.field private mFileObserver:Landroid/os/FileObserver;

.field private mFilenames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesInDir:[Ljava/io/File;

.field private mListDirectories:Landroid/widget/ListView;

.field private mListDirectoriesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNewDirectoryName:Ljava/lang/String;

.field private mSelectedDir:Ljava/io/File;

.field private mTxtvSelectedFolder:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mSelectedDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->isValidFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->returnSelectedFolder()V

    return-void
.end method

.method static synthetic access$300(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFilesInDir:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$500(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->changeDirectory(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$600(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->refreshDirectory()V

    return-void
.end method

.method static synthetic access$700(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)I
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->createFolder()I

    move-result v0

    return v0
.end method

.method private changeDirectory(Ljava/io/File;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 231
    if-nez p1, :cond_0

    .line 233
    const-string v0, "Could not change folder: dir was null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    :goto_0
    invoke-direct {p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->refreshButtonState()V

    .line 278
    return-void

    .line 235
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    const-string v0, "Could not change folder: dir is no directory"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 242
    if-eqz v4, :cond_6

    .line 245
    array-length v2, v4

    move v1, v3

    move v0, v3

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v4, v1

    .line 247
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 249
    add-int/lit8 v0, v0, 0x1

    .line 245
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 252
    :cond_3
    new-array v1, v0, [Ljava/io/File;

    iput-object v1, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFilesInDir:[Ljava/io/File;

    .line 253
    iget-object v1, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFilenames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v2, v3

    move v1, v3

    .line 254
    :goto_2
    if-ge v1, v0, :cond_5

    .line 256
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 258
    iget-object v5, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFilesInDir:[Ljava/io/File;

    aget-object v6, v4, v2

    aput-object v6, v5, v1

    .line 259
    iget-object v5, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFilenames:Ljava/util/ArrayList;

    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v1, v1, 0x1

    .line 254
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 263
    :cond_5
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFilesInDir:[Ljava/io/File;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFilenames:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 265
    iput-object p1, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mSelectedDir:Ljava/io/File;

    .line 266
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mTxtvSelectedFolder:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mListDirectoriesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 268
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->createFileObserver(Ljava/lang/String;)Landroid/os/FileObserver;

    move-result-object v0

    iput-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFileObserver:Landroid/os/FileObserver;

    .line 269
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 270
    const-string v0, "Changed directory to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 274
    :cond_6
    const-string v0, "Could not change folder: contents of dir were null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private createFileObserver(Ljava/lang/String;)Landroid/os/FileObserver;
    .locals 2

    .prologue
    .line 305
    new-instance v0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$5;

    const/16 v1, 0x3c0

    invoke-direct {v0, p0, p1, v1}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$5;-><init>(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;Ljava/lang/String;I)V

    return-object v0
.end method

.method private createFolder()I
    .locals 4

    .prologue
    const v0, 0x7f07003f

    .line 396
    iget-object v1, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mNewDirectoryName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mSelectedDir:Ljava/io/File;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mSelectedDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mSelectedDir:Ljava/io/File;

    iget-object v3, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mNewDirectoryName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 399
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 401
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 402
    if-eqz v1, :cond_0

    .line 404
    const v0, 0x7f070044

    .line 422
    :cond_0
    :goto_0
    return v0

    .line 413
    :cond_1
    const v0, 0x7f070040

    goto :goto_0

    .line 416
    :cond_2
    iget-object v1, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mSelectedDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    const v0, 0x7f070041

    goto :goto_0
.end method

.method private varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 179
    const-string v0, "DirectoryChooser"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method private isValidFile(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 429
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openNewFolderDialog()V
    .locals 5

    .prologue
    .line 366
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070043

    .line 367
    invoke-virtual {p0, v1}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mNewDirectoryName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07003c

    new-instance v2, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$7;

    invoke-direct {v2, p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$7;-><init>(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)V

    .line 368
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07003e

    new-instance v2, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$6;

    invoke-direct {v2, p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$6;-><init>(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)V

    .line 376
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 388
    return-void
.end method

.method private refreshButtonState()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mSelectedDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mBtnConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mSelectedDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->isValidFile(Ljava/io/File;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 291
    :cond_0
    return-void
.end method

.method private refreshDirectory()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mSelectedDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mSelectedDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->changeDirectory(Ljava/io/File;)V

    .line 300
    :cond_0
    return-void
.end method

.method private returnSelectedFolder()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 188
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mSelectedDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "Returning %s as result"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mSelectedDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    iget-object v1, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mSelectedDir:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 195
    const-string v1, "selected_dir"

    iget-object v2, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mSelectedDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    :cond_1
    invoke-virtual {p0, v4, v0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->setResult(ILandroid/content/Intent;)V

    .line 198
    invoke-virtual {p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->finish()V

    .line 199
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->setupActionBar()V

    .line 76
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "directory_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mNewDirectoryName:Ljava/lang/String;

    .line 80
    const v0, 0x7f0e0056

    invoke-virtual {p0, v0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mBtnConfirm:Landroid/widget/Button;

    .line 81
    const v0, 0x7f0e0057

    invoke-virtual {p0, v0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mBtnCancel:Landroid/widget/Button;

    .line 82
    const v0, 0x7f0e0059

    invoke-virtual {p0, v0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mBtnNavUp:Landroid/widget/ImageButton;

    .line 83
    const v0, 0x7f0e005b

    invoke-virtual {p0, v0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mTxtvSelectedFolder:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0e005d

    invoke-virtual {p0, v0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mListDirectories:Landroid/widget/ListView;

    .line 86
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mBtnConfirm:Landroid/widget/Button;

    new-instance v1, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$1;

    invoke-direct {v1, p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$1;-><init>(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mBtnCancel:Landroid/widget/Button;

    new-instance v1, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$2;

    invoke-direct {v1, p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$2;-><init>(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mListDirectories:Landroid/widget/ListView;

    new-instance v1, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$3;

    invoke-direct {v1, p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$3;-><init>(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mBtnNavUp:Landroid/widget/ImageButton;

    new-instance v1, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$4;

    invoke-direct {v1, p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$4;-><init>(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFilenames:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFilenames:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mListDirectoriesAdapter:Landroid/widget/ArrayAdapter;

    .line 140
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mListDirectories:Landroid/widget/ListView;

    iget-object v1, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mListDirectoriesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    invoke-virtual {p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "start_directory"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "start_directory"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 151
    invoke-direct {p0, v0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->changeDirectory(Ljava/io/File;)V

    .line 153
    invoke-virtual {p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getAnalytics()Lyglo/apps/instasavegram/Analytics;

    move-result-object v0

    const-string v1, "DirectoryChooser"

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/Analytics;->reportScreenView(Ljava/lang/String;)V

    .line 154
    return-void

    .line 147
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 336
    invoke-virtual {p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 337
    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 344
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 346
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 348
    invoke-virtual {p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->finish()V

    .line 357
    :goto_0
    return v0

    .line 351
    :cond_0
    const v2, 0x7f0e0096

    if-ne v1, v2, :cond_1

    .line 353
    invoke-direct {p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->openNewFolderDialog()V

    goto :goto_0

    .line 357
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 205
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 209
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 329
    const v0, 0x7f0e0096

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mSelectedDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->isValidFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mNewDirectoryName:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 330
    return v1

    .line 329
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 215
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 219
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V

    .line 168
    invoke-virtual {p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getAnalytics()Lyglo/apps/instasavegram/Analytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lyglo/apps/instasavegram/Analytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 169
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 161
    invoke-virtual {p0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getAnalytics()Lyglo/apps/instasavegram/Analytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lyglo/apps/instasavegram/Analytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 162
    return-void
.end method

.method setupActionBar()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method
