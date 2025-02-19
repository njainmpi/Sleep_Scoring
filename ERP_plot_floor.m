% input refers to the data from classification after removing of outliers
% ll refers to the lower limit of ylim
% ul refers to the upper limit of ylim

function [output] = ERP_plot_floor(input, ll, ul, fr, Filename)


time_erp_eeg = 0:fr:2;

startle_aw     = input.startle.ERP.Active.Average;
startle_qw     = input.startle.ERP.Quiet.Average;
startle_sleep  = input.startle.ERP.Sleep.Average;

audpre_aw      = input.audpre.ERP.Active.Average;
audpre_qw      = input.audpre.ERP.Quiet.Average;
audpre_sleep   = input.audpre.ERP.Sleep.Average;

audpre_S_aw    = input.audpre_S.ERP.Active.Average;
audpre_S_qw    = input.audpre_S.ERP.Quiet.Average;
audpre_S_sleep = input.audpre_S.ERP.Sleep.Average;

output.erp_fig = figure('units','normalized','outerposition',[0 0 1 1]);

subplot 331
plot (time_erp_eeg(1:end-1), audpre_aw)
ylim ([ll ul])
title 'pre - Active Wake'

subplot 332
plot (time_erp_eeg(1:end-1), audpre_qw)
ylim ([ll ul])
title 'pre - Quiet Wake'

subplot 333
plot (time_erp_eeg(1:end-1), audpre_sleep)
ylim ([ll ul])
title 'pre - Sleep'

subplot 334
plot (time_erp_eeg(1:end-1), startle_aw)
ylim ([ll ul])
title 'Startle - Active Wake'

subplot 335
plot (time_erp_eeg(1:end-1), startle_qw)
ylim ([ll ul])
title 'Startle - Quiet Wake'

subplot 336
plot (time_erp_eeg(1:end-1), startle_sleep)
ylim ([ll ul])
title 'Startle - Sleep'

subplot 337
plot (time_erp_eeg(1:end-1), audpre_S_aw)
ylim ([ll ul])
title 'pre + Startle - Active Wake'

subplot 338
plot (time_erp_eeg(1:end-1), audpre_S_qw)
ylim ([ll ul])
title 'pre + Startle - Quiet Wake'

subplot 339
plot (time_erp_eeg(1:end-1), audpre_S_sleep)
ylim ([ll ul])
title 'pre + Startle - Sleep'


savefig(output.erp_fig, strcat('D:\Naman Jain\Toolbox Based Results\Graphs for ERP - EMG\', Filename, '_erp_emg'))

end