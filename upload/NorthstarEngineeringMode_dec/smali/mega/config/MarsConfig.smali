.class Lmega/config/MarsConfig;
.super Lmega/config/AbstractConfig;
.source "SourceFile"


# static fields
.field private static final DOMAIN:Ljava/lang/String; = "mars"

.field public static final KEY_MARS_ASR_MODEL_PATH:Ljava/lang/String; = "asr_model_path"

.field public static final KEY_MARS_AUDIO_FOCUS_POLICY:Ljava/lang/String; = "audio_focus_policy"

.field public static final KEY_MARS_CONTACT_PAGE_SIZE:Ljava/lang/String; = "contact_page_size"

.field public static final KEY_MARS_DISPLAY_ID:Ljava/lang/String; = "mars_display_id"

.field public static final KEY_MARS_FEATURE_CONTINUOUS_DIALOGUE:Ljava/lang/String; = "feature_continuous_dialogue"

.field public static final KEY_MARS_FEATURE_EXTRA_ASSISTANT_KEY:Ljava/lang/String; = "feature_extra_assist_key"

.field public static final KEY_MARS_FEATURE_MARS_ACCESSIBILITY:Ljava/lang/String; = "feature_mars_accessibility"

.field public static final KEY_MARS_FEATURE_OFFLINE_ASR:Ljava/lang/String; = "feature_offline_asr"

.field public static final KEY_MARS_FEATURE_RES_UPDATE:Ljava/lang/String; = "feature_res_update"

.field public static final KEY_MARS_FEATURE_REWAKEUP_DISMISS:Ljava/lang/String; = "feature_rewakeup_dismiss"

.field public static final KEY_MARS_FEATURE_ROBOT:Ljava/lang/String; = "feature_robot"

.field public static final KEY_MARS_FEATURE_SHOW_3D_MODEL:Ljava/lang/String; = "feature_show_3d_model"

.field public static final KEY_MARS_MIC_NUM:Ljava/lang/String; = "min_num"

.field public static final KEY_MARS_MIC_NUM_LOW:Ljava/lang/String; = "mic_num_low"

.field public static final KEY_MARS_MULTI_REGION_COUNT:Ljava/lang/String; = "region_count"

.field public static final KEY_MARS_NATIVE_AUDIO_TYPE:Ljava/lang/String; = "native_audio_type"

.field public static final KEY_MARS_NAV_PAGE_SIZE:Ljava/lang/String; = "nav_page_size"

.field public static final KEY_MARS_OPERATION_DURATION:Ljava/lang/String; = "operation_duration"

.field public static final KEY_MARS_REF_NUM:Ljava/lang/String; = "ref_num"

.field public static final KEY_MARS_RES_PATH:Ljava/lang/String; = "mars_res_path"

.field public static final KEY_MARS_SHOW_TTS:Ljava/lang/String; = "show_tts"

.field public static final KEY_MARS_STATUS_CLIENT:Ljava/lang/String; = "status_client"

.field public static final KEY_MARS_TTS_AMPLIFY_VOLUME:Ljava/lang/String; = "mars_tts_amplify_volume"

.field public static final KEY_MARS_TTS_STREAM:Ljava/lang/String; = "mars_tts_stream"

.field public static final KEY_MARS_TTS_TONE:Ljava/lang/String; = "mars_tts_tone"

.field public static final KEY_MARS_TTS_TYPE:Ljava/lang/String; = "mars_tts_type"

.field public static final KEY_MARS_TTS_USAGE:Ljava/lang/String; = "mars_tts_usage"

.field public static final KEY_MARS_TTS_USER_APP_ID:Ljava/lang/String; = "mars_tts_user_app_id"

.field public static final KEY_MARS_TTS_USER_DEBUG_APP_ID:Ljava/lang/String; = "mars_tts_user_debug_app_id"

.field public static final KEY_MARS_UI_MODE:Ljava/lang/String; = "mars_ui_mode"

.field public static final KEY_MARS_USE_QNX_RECORDER:Ljava/lang/String; = "mars_use_qnx_recorder"

.field public static final KEY_MARS_USE_VOS:Ljava/lang/String; = "mars_use_vos"

.field public static final KEY_MARS_VOS_ENV_PROD:Ljava/lang/String; = "vos_env_prod"

.field public static final KEY_MARS_VOS_ENV_STAG:Ljava/lang/String; = "vos_env_stag"

.field public static final KEY_MARS_VOS_ENV_TEST:Ljava/lang/String; = "vos_env_test"

.field public static final KEY_MARS_WAKEUP_WELCOME_TEXT:Ljava/lang/String; = "wakeup_welcome_text"

.field public static final KEY_MARS_WAKEUP_WELCOME_TTS:Ljava/lang/String; = "wakeup_welcome_tts"

.field public static final KEY_MARS_WAKEUP_WELCOME_TTS_ZH:Ljava/lang/String; = "wakeup_welcome_tts_zh"

.field public static final KEY_MARS_WAKEUP_WORD:Ljava/lang/String; = "wakeup_word"

.field public static final KEY_MARS_WAKEUP_WORD_TYPE:Ljava/lang/String; = "wakeup_word_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmega/config/AbstractConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolKeys()[Ljava/lang/String;
    .locals 11

    const-string v0, "mars_use_vos"

    const-string v1, "mars_use_qnx_recorder"

    const-string v2, "feature_offline_asr"

    const-string v3, "feature_res_update"

    const-string v4, "feature_extra_assist_key"

    const-string v5, "feature_show_3d_model"

    const-string v6, "feature_robot"

    const-string v7, "feature_rewakeup_dismiss"

    const-string v8, "feature_continuous_dialogue"

    const-string v9, "feature_mars_accessibility"

    const-string/jumbo v10, "show_tts"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 0

    const-string p0, "mars"

    return-object p0
.end method

.method public getIntKeys()[Ljava/lang/String;
    .locals 14

    const-string v0, "mars_tts_stream"

    const-string v1, "mars_tts_usage"

    const-string v2, "mars_tts_type"

    const-string v3, "min_num"

    const-string v4, "mic_num_low"

    const-string/jumbo v5, "ref_num"

    const-string v6, "native_audio_type"

    const-string/jumbo v7, "wakeup_word_type"

    const-string v8, "mars_display_id"

    const-string v9, "contact_page_size"

    const-string v10, "nav_page_size"

    const-string v11, "mars_tts_tone"

    const-string/jumbo v12, "operation_duration"

    const-string/jumbo v13, "region_count"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringKeys()[Ljava/lang/String;
    .locals 15

    const-string/jumbo v0, "vos_env_prod"

    const-string/jumbo v1, "vos_env_stag"

    const-string/jumbo v2, "vos_env_test"

    const-string v3, "mars_res_path"

    const-string v4, "asr_model_path"

    const-string/jumbo v5, "status_client"

    const-string/jumbo v6, "wakeup_word"

    const-string/jumbo v7, "wakeup_welcome_tts"

    const-string/jumbo v8, "wakeup_welcome_tts_zh"

    const-string/jumbo v9, "wakeup_welcome_text"

    const-string v10, "mars_tts_user_app_id"

    const-string v11, "mars_tts_user_debug_app_id"

    const-string v12, "mars_tts_amplify_volume"

    const-string v13, "audio_focus_policy"

    const-string v14, "mars_ui_mode"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
