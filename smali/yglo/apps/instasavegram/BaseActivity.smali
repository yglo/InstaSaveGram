.class public abstract Lyglo/apps/instasavegram/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"

# interfaces
.implements Lyglo/apps/instasavegram/fragments/ActivityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyglo/apps/instasavegram/BaseActivity$FragmentType;
    }
.end annotation


# static fields
.field private static final ACTIVE_FRAGMENT_ARG:Ljava/lang/String; = "activeFragment"


# instance fields
.field protected activeFragment:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

.field protected fragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lyglo/apps/instasavegram/BaseActivity;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lyglo/apps/instasavegram/BaseActivity;->updateArrowBackNavigation()V

    return-void
.end method

.method private createAboutDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 224
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 234
    const v2, 0x7f070074

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07002d

    .line 235
    invoke-virtual {p0, v3}, Lyglo/apps/instasavegram/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 236
    const v1, 0x7f070052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    const v1, 0x7f070059

    new-instance v2, Lyglo/apps/instasavegram/BaseActivity$2;

    invoke-direct {v2, p0}, Lyglo/apps/instasavegram/BaseActivity$2;-><init>(Lyglo/apps/instasavegram/BaseActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 247
    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 248
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 249
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateArrowBackNavigation()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lyglo/apps/instasavegram/BaseActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 83
    :goto_0
    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 86
    :cond_0
    return-void

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createLongTouchHelpDialog()V
    .locals 3

    .prologue
    .line 254
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 256
    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 257
    const v1, 0x7f070052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 259
    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 260
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 261
    return-void
.end method

.method public createSaveDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 5

    .prologue
    .line 287
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    const v1, 0x7f07005d

    invoke-virtual {p0, v1}, Lyglo/apps/instasavegram/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->getInstaSaveApplication()Lyglo/apps/instasavegram/InstaSaveApplication;

    move-result-object v4

    invoke-virtual {v4}, Lyglo/apps/instasavegram/InstaSaveApplication;->getSavePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 289
    const v1, 0x7f070068

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    const v1, 0x7f070050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 292
    return-void
.end method

.method public getInstaSaveApplication()Lyglo/apps/instasavegram/InstaSaveApplication;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/InstaSaveApplication;

    return-object v0
.end method

.method protected abstract getLayoutId()I
.end method

.method public logout()V
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->getInstaSaveApplication()Lyglo/apps/instasavegram/InstaSaveApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/InstaSaveApplication;->setAccessToken(Ljava/lang/String;)V

    .line 326
    const v0, 0x7f07004c

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 328
    sget-object v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->LOGIN:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/BaseActivity;->setActiveFragment(Lyglo/apps/instasavegram/BaseActivity$FragmentType;)V

    .line 329
    return-void
.end method

.method public onAcessTokenRetrieved(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 341
    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->getInstaSaveApplication()Lyglo/apps/instasavegram/InstaSaveApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyglo/apps/instasavegram/InstaSaveApplication;->setAccessToken(Ljava/lang/String;)V

    .line 348
    :goto_0
    sget-object v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->FEED:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/BaseActivity;->setActiveFragment(Lyglo/apps/instasavegram/BaseActivity$FragmentType;)V

    .line 349
    return-void

    .line 345
    :cond_0
    const v0, 0x7f070048

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/BaseActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/BaseActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 58
    iget-object v0, p0, Lyglo/apps/instasavegram/BaseActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    new-instance v1, Lyglo/apps/instasavegram/BaseActivity$1;

    invoke-direct {v1, p0}, Lyglo/apps/instasavegram/BaseActivity$1;-><init>(Lyglo/apps/instasavegram/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 67
    if-eqz p1, :cond_0

    .line 69
    invoke-static {}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->values()[Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    move-result-object v0

    const-string v1, "activeFragment"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lyglo/apps/instasavegram/BaseActivity;->activeFragment:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    .line 70
    invoke-direct {p0}, Lyglo/apps/instasavegram/BaseActivity;->updateArrowBackNavigation()V

    .line 76
    :goto_0
    const v0, 0x7f050002

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 77
    return-void

    .line 73
    :cond_0
    sget-object v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->FEED:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/BaseActivity;->setActiveFragment(Lyglo/apps/instasavegram/BaseActivity$FragmentType;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 334
    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 335
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 358
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    const-string v0, "LGE"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LGE"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    :cond_0
    const/4 v0, 0x1

    .line 360
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 366
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    const-string v0, "LGE"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LGE"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    :cond_0
    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->openOptionsMenu()V

    .line 369
    const/4 v0, 0x1

    .line 371
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 202
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 218
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 205
    :pswitch_0
    invoke-direct {p0}, Lyglo/apps/instasavegram/BaseActivity;->createAboutDialog()V

    goto :goto_0

    .line 209
    :pswitch_1
    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->logout()V

    goto :goto_0

    .line 213
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lyglo/apps/instasavegram/PreferencesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    invoke-virtual {p0, v1}, Lyglo/apps/instasavegram/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x7f0e0097
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    const-string v0, "activeFragment"

    iget-object v1, p0, Lyglo/apps/instasavegram/BaseActivity;->activeFragment:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 99
    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->getInstaSaveApplication()Lyglo/apps/instasavegram/InstaSaveApplication;

    move-result-object v0

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getAnalytics()Lyglo/apps/instasavegram/Analytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lyglo/apps/instasavegram/Analytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 100
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 92
    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->getInstaSaveApplication()Lyglo/apps/instasavegram/InstaSaveApplication;

    move-result-object v0

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getAnalytics()Lyglo/apps/instasavegram/Analytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lyglo/apps/instasavegram/Analytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 93
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lyglo/apps/instasavegram/BaseActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method protected rateOnMarket()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 308
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 309
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 312
    :try_start_0
    invoke-virtual {p0, v1}, Lyglo/apps/instasavegram/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->getInstaSaveApplication()Lyglo/apps/instasavegram/InstaSaveApplication;

    move-result-object v0

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rated"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 320
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 316
    const-string v0, "Sorry, unable to find market app"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public setActiveFragment(Lyglo/apps/instasavegram/BaseActivity$FragmentType;)V
    .locals 5

    .prologue
    const v4, 0x7f0e0053

    .line 121
    :cond_0
    :try_start_0
    iget-object v0, p0, Lyglo/apps/instasavegram/BaseActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    invoke-virtual {p0}, Lyglo/apps/instasavegram/BaseActivity;->getInstaSaveApplication()Lyglo/apps/instasavegram/InstaSaveApplication;

    move-result-object v0

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 130
    sget-object p1, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->LOGIN:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    .line 132
    :cond_1
    iget-object v0, p0, Lyglo/apps/instasavegram/BaseActivity;->activeFragment:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    if-eq p1, v0, :cond_3

    .line 134
    iget-object v0, p0, Lyglo/apps/instasavegram/BaseActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0e0054

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/fragments/FragmentLowBar;

    .line 136
    iget-object v1, p0, Lyglo/apps/instasavegram/BaseActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 138
    sget-object v2, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->OWN:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    invoke-virtual {p1, v2}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 140
    sget-object v2, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->OWN:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-static {v2}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->newInstance(Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    move-result-object v2

    .line 141
    invoke-virtual {p1}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 142
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->selectButton(I)V

    .line 172
    :cond_2
    :goto_1
    iput-object p1, p0, Lyglo/apps/instasavegram/BaseActivity;->activeFragment:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    .line 173
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 175
    :cond_3
    return-void

    .line 144
    :cond_4
    sget-object v2, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->LIKED:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    invoke-virtual {p1, v2}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    sget-object v2, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->LIKED:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-static {v2}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->newInstance(Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    move-result-object v2

    .line 147
    invoke-virtual {p1}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 148
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->selectButton(I)V

    goto :goto_1

    .line 150
    :cond_5
    sget-object v2, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->FEED:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    invoke-virtual {p1, v2}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 152
    sget-object v2, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->FEED:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-static {v2}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->newInstance(Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    move-result-object v2

    .line 153
    invoke-virtual {p1}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 154
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->selectButton(I)V

    goto :goto_1

    .line 156
    :cond_6
    sget-object v2, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->SEARCH:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    invoke-virtual {p1, v2}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 158
    invoke-static {}, Lyglo/apps/instasavegram/fragments/FragmentSearch;->newInstance()Lyglo/apps/instasavegram/fragments/FragmentSearch;

    move-result-object v2

    .line 159
    invoke-virtual {p1}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 160
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->selectButton(I)V

    goto :goto_1

    .line 162
    :cond_7
    sget-object v2, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->PRO:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    invoke-virtual {p1, v2}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 164
    invoke-static {}, Lyglo/apps/instasavegram/FragmentPro;->newInstance()Lyglo/apps/instasavegram/FragmentPro;

    move-result-object v2

    invoke-virtual {p1}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 165
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->selectButton(I)V

    goto :goto_1

    .line 167
    :cond_8
    sget-object v0, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->LOGIN:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    invoke-virtual {p1, v0}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    invoke-static {}, Lyglo/apps/instasavegram/fragments/FragmentLogin;->newInstance()Lyglo/apps/instasavegram/fragments/FragmentLogin;

    move-result-object v0

    invoke-virtual {p1}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public setBannerVisibility(Z)V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method public setFragmentViewPhotoVisible(Lyglo/apps/instasavegram/model/Media;Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)V
    .locals 4

    .prologue
    .line 180
    invoke-static {p1, p2}, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->newInstance(Lyglo/apps/instasavegram/model/Media;Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)Lyglo/apps/instasavegram/fragments/FragmentViewBig;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lyglo/apps/instasavegram/BaseActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 183
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 184
    const v2, 0x7f0e0053

    sget-object v3, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->VIEW_BIG:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    invoke-virtual {v3}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 185
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 186
    return-void
.end method

.method public setFragmentViewUserInfoVisible(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 191
    invoke-static {p1}, Lyglo/apps/instasavegram/fragments/FragmentUserInfo;->newInstance(Ljava/lang/String;)Lyglo/apps/instasavegram/fragments/FragmentUserInfo;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lyglo/apps/instasavegram/BaseActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 194
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 195
    const v2, 0x7f0e0053

    sget-object v3, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->USER_INFO:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    invoke-virtual {v3}, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 196
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 197
    return-void
.end method
