package androidx.fragment.app;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.IntentSenderRequest$Builder;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.activity.result.contract.ActivityResultContracts$StartIntentSenderForResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentManager$FragmentIntentSenderContract extends ActivityResultContract<IntentSenderRequest, ActivityResult> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    /* JADX INFO: renamed from: createIntent, reason: avoid collision after fix types in other method */
    public Intent createIntent2(@NonNull Context context, IntentSenderRequest intentSenderRequest) {
        Bundle bundleExtra;
        Intent intent = new Intent(ActivityResultContracts$StartIntentSenderForResult.ACTION_INTENT_SENDER_REQUEST);
        Intent fillInIntent = intentSenderRequest.getFillInIntent();
        if (fillInIntent != null && (bundleExtra = fillInIntent.getBundleExtra(ActivityResultContracts$StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE)) != null) {
            intent.putExtra(ActivityResultContracts$StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE, bundleExtra);
            fillInIntent.removeExtra(ActivityResultContracts$StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE);
            if (fillInIntent.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                intentSenderRequest = new IntentSenderRequest$Builder(intentSenderRequest.getIntentSender()).setFillInIntent(null).setFlags(intentSenderRequest.getFlagsValues(), intentSenderRequest.getFlagsMask()).build();
            }
        }
        intent.putExtra(ActivityResultContracts$StartIntentSenderForResult.EXTRA_INTENT_SENDER_REQUEST, intentSenderRequest);
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "CreateIntent created the following intent: " + intent);
        }
        return intent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.activity.result.contract.ActivityResultContract
    @NonNull
    public ActivityResult parseResult(int i9, @Nullable Intent intent) {
        return new ActivityResult(i9, intent);
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // androidx.activity.result.contract.ActivityResultContract
    @NonNull
    public /* bridge */ /* synthetic */ ActivityResult parseResult(int i9, @Nullable Intent intent) {
        return parseResult(i9, intent);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [android.content.Context, java.lang.Object] */
    @Override // androidx.activity.result.contract.ActivityResultContract
    @NonNull
    public /* bridge */ /* synthetic */ Intent createIntent(@NonNull Context context, IntentSenderRequest intentSenderRequest) {
        return createIntent2(context, intentSenderRequest);
    }
}
