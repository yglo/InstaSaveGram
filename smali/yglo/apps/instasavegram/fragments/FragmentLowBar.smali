.class public Lyglo/apps/instasavegram/fragments/FragmentLowBar;
.super Landroid/support/v4/app/Fragment;
.source "FragmentLowBar.java"


# static fields
.field public static final BUTTON_FEED:I = 0x0

.field public static final BUTTON_LIKED:I = 0x3

.field public static final BUTTON_OWN:I = 0x2

.field public static final BUTTON_PRO:I = 0x4

.field public static final BUTTON_SEARCH:I = 0x1

.field private static final NUMBER_OF_BUTTONS:I = 0x5

.field private static final SELECTED_BUTTON_EXTRA:Ljava/lang/String; = "SELECTED_BUTTON_EXTRA"


# instance fields
.field private imageButtons:[Landroid/widget/ImageButton;

.field private selectedButton:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->imageButtons:[Landroid/widget/ImageButton;

    .line 35
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 47
    const v0, 0x7f03001d

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 49
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/BaseActivity;

    .line 51
    const v1, 0x7f0e0064

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 52
    iget-object v3, p0, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->imageButtons:[Landroid/widget/ImageButton;

    aput-object v1, v3, v5

    .line 53
    new-instance v3, Lyglo/apps/instasavegram/fragments/FragmentLowBar$1;

    invoke-direct {v3, p0, v0}, Lyglo/apps/instasavegram/fragments/FragmentLowBar$1;-><init>(Lyglo/apps/instasavegram/fragments/FragmentLowBar;Lyglo/apps/instasavegram/BaseActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v1, 0x7f0e0066

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 63
    iget-object v3, p0, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->imageButtons:[Landroid/widget/ImageButton;

    const/4 v4, 0x2

    aput-object v1, v3, v4

    .line 64
    new-instance v3, Lyglo/apps/instasavegram/fragments/FragmentLowBar$2;

    invoke-direct {v3, p0, v0}, Lyglo/apps/instasavegram/fragments/FragmentLowBar$2;-><init>(Lyglo/apps/instasavegram/fragments/FragmentLowBar;Lyglo/apps/instasavegram/BaseActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0e0067

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 74
    iget-object v3, p0, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->imageButtons:[Landroid/widget/ImageButton;

    const/4 v4, 0x3

    aput-object v1, v3, v4

    .line 75
    new-instance v3, Lyglo/apps/instasavegram/fragments/FragmentLowBar$3;

    invoke-direct {v3, p0, v0}, Lyglo/apps/instasavegram/fragments/FragmentLowBar$3;-><init>(Lyglo/apps/instasavegram/fragments/FragmentLowBar;Lyglo/apps/instasavegram/BaseActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v1, 0x7f0e0065

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 85
    iget-object v3, p0, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->imageButtons:[Landroid/widget/ImageButton;

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 86
    new-instance v3, Lyglo/apps/instasavegram/fragments/FragmentLowBar$4;

    invoke-direct {v3, p0, v0}, Lyglo/apps/instasavegram/fragments/FragmentLowBar$4;-><init>(Lyglo/apps/instasavegram/fragments/FragmentLowBar;Lyglo/apps/instasavegram/BaseActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v1, 0x7f0e0068

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 96
    iget-object v3, p0, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->imageButtons:[Landroid/widget/ImageButton;

    const/4 v4, 0x4

    aput-object v1, v3, v4

    .line 97
    new-instance v3, Lyglo/apps/instasavegram/fragments/FragmentLowBar$5;

    invoke-direct {v3, p0, v0}, Lyglo/apps/instasavegram/fragments/FragmentLowBar$5;-><init>(Lyglo/apps/instasavegram/fragments/FragmentLowBar;Lyglo/apps/instasavegram/BaseActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    if-nez p3, :cond_0

    .line 107
    iput v5, p0, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->selectedButton:I

    .line 111
    :goto_0
    iget v0, p0, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->selectedButton:I

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->selectButton(I)V

    .line 113
    return-object v2

    .line 109
    :cond_0
    const-string v0, "SELECTED_BUTTON_EXTRA"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->selectedButton:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 41
    const-string v0, "SELECTED_BUTTON_EXTRA"

    iget v1, p0, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->selectedButton:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public selectButton(I)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 118
    if-ltz p1, :cond_1

    if-ge p1, v4, :cond_1

    .line 120
    iput p1, p0, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->selectedButton:I

    move v2, v1

    .line 122
    :goto_0
    if-ge v2, v4, :cond_1

    .line 123
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentLowBar;->imageButtons:[Landroid/widget/ImageButton;

    aget-object v3, v0, v2

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 122
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 123
    goto :goto_1

    .line 125
    :cond_1
    return-void
.end method
