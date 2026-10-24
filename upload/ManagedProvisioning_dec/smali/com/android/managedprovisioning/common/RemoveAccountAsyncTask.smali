.class Lcom/android/managedprovisioning/common/RemoveAccountAsyncTask;
.super Landroid/os/AsyncTask;
.source "RemoveAccountAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountToRemove:Landroid/accounts/Account;

.field private mCallback:Lcom/android/managedprovisioning/common/RemoveAccountListener;

.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/RemoveAccountListener;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/managedprovisioning/common/RemoveAccountAsyncTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 41
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    iput-object p1, p0, Lcom/android/managedprovisioning/common/RemoveAccountAsyncTask;->mAccountToRemove:Landroid/accounts/Account;

    .line 42
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/common/RemoveAccountAsyncTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 43
    iput-object p4, p0, Lcom/android/managedprovisioning/common/RemoveAccountAsyncTask;->mCallback:Lcom/android/managedprovisioning/common/RemoveAccountListener;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/common/RemoveAccountAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 48
    iget-object p1, p0, Lcom/android/managedprovisioning/common/RemoveAccountAsyncTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/managedprovisioning/common/RemoveAccountAsyncTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object p0, p0, Lcom/android/managedprovisioning/common/RemoveAccountAsyncTask;->mAccountToRemove:Landroid/accounts/Account;

    invoke-virtual {v0, p1, p0}, Lcom/android/managedprovisioning/common/Utils;->removeAccount(Landroid/content/Context;Landroid/accounts/Account;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/common/RemoveAccountAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/managedprovisioning/common/RemoveAccountAsyncTask;->mCallback:Lcom/android/managedprovisioning/common/RemoveAccountListener;

    if-eqz p0, :cond_0

    .line 58
    invoke-interface {p0}, Lcom/android/managedprovisioning/common/RemoveAccountListener;->onAccountRemoved()V

    :cond_0
    return-void
.end method
