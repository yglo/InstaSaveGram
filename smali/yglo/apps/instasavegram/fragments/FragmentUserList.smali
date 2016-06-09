.class public Lyglo/apps/instasavegram/fragments/FragmentUserList;
.super Lyglo/apps/instasavegram/fragments/RestRequestFragment;
.source "FragmentUserList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyglo/apps/instasavegram/fragments/RestRequestFragment",
        "<",
        "Ljava/util/List",
        "<",
        "Lyglo/apps/instasavegram/model/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field private footer:Landroid/widget/TextView;

.field private listAdapter:Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;

.field private listView:Landroid/widget/ListView;

.field private menu:Landroid/view/Menu;

.field private searchButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;-><init>()V

    .line 163
    return-void
.end method

.method static synthetic access$000(Lyglo/apps/instasavegram/fragments/FragmentUserList;)Landroid/view/Menu;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->menu:Landroid/view/Menu;

    return-object v0
.end method

.method public static newInstance()Lyglo/apps/instasavegram/fragments/FragmentUserList;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lyglo/apps/instasavegram/fragments/FragmentUserList;

    invoke-direct {v0}, Lyglo/apps/instasavegram/fragments/FragmentUserList;-><init>()V

    return-object v0
.end method

.method private updateViews()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 114
    iget-boolean v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->isRequestingData:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->footer:Landroid/widget/TextView;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    const v2, 0x7f070046

    invoke-virtual {v1, v2}, Lyglo/apps/instasavegram/InstaSaveApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->footer:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentUserList;->isDataEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->footer:Landroid/widget/TextView;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    const v2, 0x7f070051

    invoke-virtual {v1, v2}, Lyglo/apps/instasavegram/InstaSaveApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->searchButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->footer:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->searchButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected doOnStartRequest()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public doSearchRequest(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0, p1}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->doSearchRequest(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentUserList;->updateViews()V

    .line 109
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->accessToken:Ljava/lang/String;

    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->restServiceHelperCallback:Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;

    invoke-virtual {v0, v1, p1, v2}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->searchUser(Ljava/lang/String;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    iput v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->requestId:I

    .line 110
    return-void
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isDataEmpty()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-direct {v0, p0, v1}, Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;-><init>(Lyglo/apps/instasavegram/fragments/FragmentUserList;Landroid/content/Context;)V

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->listAdapter:Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/fragments/FragmentUserList;->setHasOptionsMenu(Z)V

    .line 59
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 65
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->menu:Landroid/view/Menu;

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 71
    const v0, 0x7f030022

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 73
    const v0, 0x7f0e007e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->listView:Landroid/widget/ListView;

    .line 74
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->listAdapter:Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->listView:Landroid/widget/ListView;

    new-instance v2, Lyglo/apps/instasavegram/fragments/FragmentUserList$1;

    invoke-direct {v2, p0}, Lyglo/apps/instasavegram/fragments/FragmentUserList$1;-><init>(Lyglo/apps/instasavegram/fragments/FragmentUserList;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    const v0, 0x7f0e007d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->searchButton:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->searchButton:Landroid/widget/Button;

    new-instance v2, Lyglo/apps/instasavegram/fragments/FragmentUserList$2;

    invoke-direct {v2, p0}, Lyglo/apps/instasavegram/fragments/FragmentUserList$2;-><init>(Lyglo/apps/instasavegram/fragments/FragmentUserList;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f0e0055

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->footer:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getTypefaceManager()Lyglo/apps/instasavegram/TypefaceManager;

    move-result-object v2

    const v0, 0x7f0e005f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Lyglo/apps/instasavegram/TypefaceManager;->setTypeface(Landroid/view/ViewGroup;)V

    .line 99
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentUserList;->updateViews()V

    .line 101
    return-object v1
.end method

.method public responseFailure(Lyglo/apps/instasavegram/rest/service/RestServiceError;)V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lyglo/apps/instasavegram/fragments/FragmentUserList;->treatRequestExeptions(Lyglo/apps/instasavegram/rest/service/RestServiceError;Z)V

    .line 159
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentUserList;->updateViews()V

    .line 160
    return-void
.end method

.method public responseSuccess(Lyglo/apps/instasavegram/model/IGResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyglo/apps/instasavegram/model/IGResponse",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/User;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p1}, Lyglo/apps/instasavegram/model/IGResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->data:Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->listAdapter:Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;->notifyDataSetChanged()V

    .line 152
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentUserList;->updateViews()V

    .line 153
    return-void
.end method
