.class public Lyglo/apps/instasavegram/TypefaceManager;
.super Ljava/lang/Object;
.source "TypefaceManager.java"


# instance fields
.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "font.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/TypefaceManager;->typeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lyglo/apps/instasavegram/TypefaceManager;->typeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method


# virtual methods
.method public setTypeface(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lyglo/apps/instasavegram/TypefaceManager;->typeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    .line 32
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 34
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 35
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 37
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/TypefaceManager;->setTypeface(Landroid/view/ViewGroup;)V

    .line 32
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 39
    :cond_1
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/TypefaceManager;->setTypeface(Landroid/widget/TextView;)V

    goto :goto_1

    .line 45
    :cond_2
    return-void
.end method

.method public setTypeface(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lyglo/apps/instasavegram/TypefaceManager;->typeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lyglo/apps/instasavegram/TypefaceManager;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 56
    :cond_0
    return-void
.end method
