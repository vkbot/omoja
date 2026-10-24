.class public Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;
.super Ljava/lang/Object;
.source "StartDpcInsideSuwServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field static final NETWORK_INTERCEPT_SERVICE_ACTION:Ljava/lang/String; = "com.google.android.setupwizard.NetworkInterceptService.BIND"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SETUP_WIZARD_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.setupwizard"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mDpcIntentSender:Ljava/lang/Runnable;

.field private mDpcState:I

.field private mNetworkInterceptService:Lcom/google/android/setupwizard/util/INetworkInterceptService;

.field private mNetworkInterceptServiceBindingInitiated:Z

.field private mNetworkInterceptWasInitiallyEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 70
    iput v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mDpcState:I

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptServiceBindingInitiated:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptWasInitiallyEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dpc_state"

    const/4 v1, 0x1

    .line 78
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 80
    iput v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mDpcState:I

    const-string v0, "network_intercept_service_binding_initiated"

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptServiceBindingInitiated:Z

    const-string v0, "network_intercept_was_initially_enabled"

    .line 84
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptWasInitiallyEnabled:Z

    .line 87
    iget-boolean p2, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptServiceBindingInitiated:Z

    if-eqz p2, :cond_1

    .line 93
    iput-boolean v2, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptServiceBindingInitiated:Z

    .line 94
    iget p2, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mDpcState:I

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_0

    .line 96
    iput-object p3, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mDpcIntentSender:Ljava/lang/Runnable;

    .line 98
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->tryBindService(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private cacheInitialNetworkInterceptSetting()V
    .locals 1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptService:Lcom/google/android/setupwizard/util/INetworkInterceptService;

    .line 228
    invoke-interface {v0}, Lcom/google/android/setupwizard/util/INetworkInterceptService;->isNetworkIntentIntercepted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptWasInitiallyEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Exception from SUW NetworkInterceptService"

    .line 230
    invoke-static {v0, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private disableNetworkIntentIntercept()V
    .locals 1

    .line 236
    :try_start_0
    iget-object p0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptService:Lcom/google/android/setupwizard/util/INetworkInterceptService;

    invoke-interface {p0}, Lcom/google/android/setupwizard/util/INetworkInterceptService;->disableNetworkIntentIntercept()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Service call to disable SUW network intent interception failed"

    .line 237
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Exception from SUW NetworkInterceptService"

    .line 241
    invoke-static {v0, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private enableNetworkIntentIntercept()V
    .locals 1

    .line 246
    iget-object p0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptService:Lcom/google/android/setupwizard/util/INetworkInterceptService;

    if-nez p0, :cond_0

    const-string p0, "Attempt to re-enable SUW network intent interception when service is null"

    .line 247
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    return-void

    .line 253
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/setupwizard/util/INetworkInterceptService;->enableNetworkIntentIntercept()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Service call to re-enable SUW network intent interception failed"

    .line 254
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Exception from SUW NetworkInterceptService"

    .line 258
    invoke-static {v0, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendDpcIntentIfNotAlreadySent()V
    .locals 2

    .line 217
    iget v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mDpcState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mDpcIntentSender:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x2

    .line 219
    iput v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mDpcState:I

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mDpcIntentSender:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private tryBindService(Landroid/content/Context;)V
    .locals 2

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.setupwizard.NetworkInterceptService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.setupwizard"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 143
    :try_start_0
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    iput-boolean v1, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptServiceBindingInitiated:Z

    goto :goto_0

    :cond_0
    const-string p0, "Failed to bind to SUW NetworkInterceptService"

    .line 146
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Access denied to SUW NetworkInterceptService"

    .line 149
    invoke-static {p1, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dpcFinished()V
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptServiceBindingInitiated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptWasInitiallyEnabled:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->enableNetworkIntentIntercept()V

    :cond_0
    const/4 v0, 0x3

    .line 160
    iput v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mDpcState:I

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    const-string p1, "Connection to SUW NetworkInterceptService died"

    .line 206
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 207
    iput-object p1, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptService:Lcom/google/android/setupwizard/util/INetworkInterceptService;

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    const-string p1, "Binding to SUW NetworkInterceptService returned null"

    .line 212
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->sendDpcIntentIfNotAlreadySent()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "Connection to SUW NetworkInterceptService established"

    .line 179
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 181
    invoke-static {p2}, Lcom/google/android/setupwizard/util/INetworkInterceptService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/setupwizard/util/INetworkInterceptService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptService:Lcom/google/android/setupwizard/util/INetworkInterceptService;

    .line 185
    iget p1, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mDpcState:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->cacheInitialNetworkInterceptSetting()V

    .line 191
    iget-boolean p1, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptWasInitiallyEnabled:Z

    if-eqz p1, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->disableNetworkIntentIntercept()V

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->sendDpcIntentIfNotAlreadySent()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p1, "Connection to SUW NetworkInterceptService lost"

    .line 200
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptService:Lcom/google/android/setupwizard/util/INetworkInterceptService;

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 108
    iget v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mDpcState:I

    const-string v1, "dpc_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    iget-boolean v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptServiceBindingInitiated:Z

    const-string v1, "network_intercept_service_binding_initiated"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    iget-boolean p0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptWasInitiallyEnabled:Z

    const-string v0, "network_intercept_was_initially_enabled"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public triggerDpcStart(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptServiceBindingInitiated:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mDpcState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iput-object p2, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mDpcIntentSender:Ljava/lang/Runnable;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->tryBindService(Landroid/content/Context;)V

    .line 133
    iget-boolean p1, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptServiceBindingInitiated:Z

    if-nez p1, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->sendDpcIntentIfNotAlreadySent()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "Duplicate calls to triggerDpcStart() - ignoring"

    .line 121
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptServiceBindingInitiated:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptServiceBindingInitiated:Z

    :cond_0
    const/4 p1, 0x0

    .line 174
    iput-object p1, p0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->mNetworkInterceptService:Lcom/google/android/setupwizard/util/INetworkInterceptService;

    return-void
.end method
