.class public Landroid/support/v7/internal/app/ToolbarActionBar;
.super Landroid/support/v7/app/ActionBar;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/app/ToolbarActionBar$MenuBuilderCallback;,
        Landroid/support/v7/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;,
        Landroid/support/v7/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;,
        Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;
    }
.end annotation


# instance fields
.field private mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

.field private mLastMenuVisibility:Z

.field private mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

.field private mMenuCallbackSet:Z

.field private final mMenuClicker:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

.field private final mMenuInvalidator:Ljava/lang/Runnable;

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbarMenuPrepared:Z

.field private mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Landroid/support/v7/internal/app/ToolbarActionBar$1;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/app/ToolbarActionBar$1;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;)V

    iput-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    .line 68
    new-instance v0, Landroid/support/v7/internal/app/ToolbarActionBar$2;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/app/ToolbarActionBar$2;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;)V

    iput-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuClicker:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    .line 77
    new-instance v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    .line 78
    new-instance v0, Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;

    invoke-direct {v0, p0, p3}, Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 79
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 80
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuClicker:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 81
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p2}, Landroid/support/v7/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/internal/app/ToolbarActionBar;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    return v0
.end method

.method static synthetic access$202(Landroid/support/v7/internal/app/ToolbarActionBar;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    return p1
.end method

.method static synthetic access$300(Landroid/support/v7/internal/app/ToolbarActionBar;)Landroid/support/v7/internal/widget/DecorToolbar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/internal/app/ToolbarActionBar;Landroid/view/Menu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/support/v7/internal/app/ToolbarActionBar;->getListMenuView(Landroid/view/Menu;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private ensureListMenuPresenter(Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 504
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 505
    check-cast p1, Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 507
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 508
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 509
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 510
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 513
    sget v3, Landroid/support/v7/appcompat/R$attr;->actionBarPopupTheme:I

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 514
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_0

    .line 515
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 519
    :cond_0
    sget v3, Landroid/support/v7/appcompat/R$attr;->panelMenuListTheme:I

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 520
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_2

    .line 521
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 526
    :goto_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 527
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 530
    new-instance v0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    sget v2, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    .line 531
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    new-instance v1, Landroid/support/v7/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;Landroid/support/v7/internal/app/ToolbarActionBar$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 532
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V

    .line 534
    :cond_1
    return-void

    .line 523
    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method

.method private getListMenuView(Landroid/view/Menu;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 491
    invoke-direct {p0, p1}, Landroid/support/v7/internal/app/ToolbarActionBar;->ensureListMenuPresenter(Landroid/view/Menu;)V

    .line 493
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    if-nez v1, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-object v0

    .line 497
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 498
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method private getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 566
    iget-boolean v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuCallbackSet:Z

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    new-instance v1, Landroid/support/v7/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Landroid/support/v7/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;Landroid/support/v7/internal/app/ToolbarActionBar$1;)V

    new-instance v2, Landroid/support/v7/internal/app/ToolbarActionBar$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Landroid/support/v7/internal/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;Landroid/support/v7/internal/app/ToolbarActionBar$1;)V

    invoke-interface {v0, v1, v2}, Landroid/support/v7/internal/widget/DecorToolbar;->setMenuCallbacks(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;)V

    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuCallbackSet:Z

    .line 571
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 2

    .prologue
    .line 329
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;I)V
    .locals 2

    .prologue
    .line 341
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V
    .locals 2

    .prologue
    .line 347
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V
    .locals 2

    .prologue
    .line 335
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->collapseActionView()V

    .line 432
    const/4 v0, 0x1

    .line 434
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3

    .prologue
    .line 479
    iget-boolean v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mLastMenuVisibility:Z

    if-ne p1, v0, :cond_1

    .line 488
    :cond_0
    return-void

    .line 482
    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mLastMenuVisibility:Z

    .line 484
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 485
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 486
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v0, p1}, Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 485
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedTab()Landroid/support/v7/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 377
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 383
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedWindowCallback()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/DecorToolbar;->setVisibility(I)V

    .line 409
    return-void
.end method

.method public invalidateOptionsMenu()Z
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 424
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/support/v7/app/ActionBar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public newTab()Landroid/support/v7/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 323
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 193
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 466
    invoke-direct {p0}, Landroid/support/v7/internal/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 467
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, v0}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 458
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 459
    invoke-virtual {p0}, Landroid/support/v7/internal/app/ToolbarActionBar;->openOptionsMenu()Z

    .line 461
    :cond_0
    return v1
.end method

.method public openOptionsMenu()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method populateOptionsMenu()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 438
    invoke-direct {p0}, Landroid/support/v7/internal/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 439
    instance-of v2, v1, Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-object v2, v0

    .line 440
    :goto_0
    if-eqz v2, :cond_0

    .line 441
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 444
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 445
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 447
    :cond_1
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :cond_2
    if-eqz v2, :cond_3

    .line 451
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 454
    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    .line 439
    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 451
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_5
    throw v0
.end method

.method public removeAllTabs()V
    .locals 2

    .prologue
    .line 365
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 476
    return-void
.end method

.method public removeTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 2

    .prologue
    .line 353
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeTabAt(I)V
    .locals 2

    .prologue
    .line 359
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 2

    .prologue
    .line 371
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    return-void
.end method

.method public setCustomView(I)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 102
    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->setCustomView(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 90
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 91
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 270
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 271
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1

    .prologue
    .line 249
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 250
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 255
    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 256
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 280
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 281
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 265
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 266
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 275
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 276
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 260
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 261
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 143
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 183
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setNavigationIcon(I)V

    .line 168
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 163
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setIcon(I)V

    .line 108
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 113
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/ActionBar$OnNavigationListener;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    new-instance v1, Landroid/support/v7/internal/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Landroid/support/v7/internal/app/NavItemSelectedListener;-><init>(Landroid/support/v7/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v7/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;)V

    .line 198
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setLogo(I)V

    .line 118
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 123
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 2

    .prologue
    .line 310
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tabs not supported in this configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setNavigationMode(I)V

    .line 314
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    .line 210
    return-void

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public setSubtitle(I)V
    .locals 2

    .prologue
    .line 244
    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 245
    return-void

    .line 244
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 240
    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .prologue
    .line 229
    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 235
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/DecorToolbar;->setVisibility(I)V

    .line 402
    return-void
.end method
