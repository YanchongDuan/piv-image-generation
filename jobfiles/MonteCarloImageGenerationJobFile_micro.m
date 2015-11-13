function JOBLIST = MonteCarloImageGenerationJobFile_micro()

% Region dimensions
region_width_pixels  = 128;
region_height_pixels  = 128;

DefaultJob.JobOptions.ParallelProcessing = 0;
DefaultJob.JobOptions.NumberOfDigits = 6;
DefaultJob.JobOptions.ReSeed = 1;

DefaultJob.ImageType = 'synthetic';
DefaultJob.SetType = 'mc';
DefaultJob.CaseName = 'piv_test_images';
DefaultJob.ProjectRepository = '~/Desktop/piv_test_images';

DefaultJob.Parameters.Image.Height = region_height_pixels;
DefaultJob.Parameters.Image.Width = region_width_pixels;
DefaultJob.Parameters.Sets.Start = 1;
DefaultJob.Parameters.Sets.End = 1;
DefaultJob.Parameters.Sets.ImagesPerSet = 1000;

% Rigid-body displacements (pixels)
DefaultJob.Parameters.Translation.X =  10 * [-1 1];
DefaultJob.Parameters.Translation.Y =  10 * [-1 1];
DefaultJob.Parameters.Translation.Z =  0 * [0 2];

% Range of isotropic scaling factors
DefaultJob.Parameters.Scaling = 1 * [1 1]; 

% Range of rotation angles (degrees)
DefaultJob.Parameters.Rotation.Z_01 = 0 * [1 1];
DefaultJob.Parameters.Rotation.Y    = 0 * [1 1];
DefaultJob.Parameters.Rotation.Z_02 = 0 * [1 1];

% Sharing
DefaultJob.Parameters.Shear.XY = 0 * [0.00, 0.10];
DefaultJob.Parameters.Shear.XZ = 0 * [1, 1];
DefaultJob.Parameters.Shear.YX = 0 * [0.00, 0.10];
DefaultJob.Parameters.Shear.YZ = 0 * [0.00, 0.10];
DefaultJob.Parameters.Shear.ZX = 0 * [0.00, 0.10];
DefaultJob.Parameters.Shear.ZY = 0 * [0.00, 0.10];

% Range of particle concentrations (particles per pixel)
DefaultJob.Parameters.ParticleConcentration = 5E-3 * [1 1];

% Noise parameters
DefaultJob.Parameters.Noise.Mean = 0.05;
DefaultJob.Parameters.Noise.Std = 0.05;

% Optics
% Image magnification (microns per pixel)
DefaultJob.Parameters.Image.PixelSize = 20;

% Objective lens parameters
DefaultJob.Parameters.Optics.Objective.Name = '20x';

% Laser wavelength in microns
DefaultJob.Parameters.Optics.Laser.Wavelength = 0.532;

% Fraction above background intensity to render particles
DefaultJob.Parameters.Experiment.IntensityFraction = 0.0;
 
% Channel depth in microns
DefaultJob.Parameters.Experiment.ChannelDepth = 1;

% Particle diameter in microns
DefaultJob.Parameters.Experiment.ParticleDiameter = 1.0 * [1, 1];

% Particle concentration (particles per �m^3)
DefaultJob.Parameters.Experiment.ParticleConcentration = 5E-3;

% Diffusion
DefaultJob.Parameters.Experiment.DiffusionStdDev = 3 * [1, 1];

% Case 1
SegmentItem = DefaultJob;
SegmentItem.SetType = 'mc';
SegmentItem.CaseName = 'piv_test_micro';
SegmentItem.Parameters.Image.Height = 128;
SegmentItem.Parameters.Image.Width  = 128;
SegmentItem.Parameters.ImageNoise.Mean = 0 * [0.1, 0.1];
SegmentItem.Parameters.ImageNoise.StdDev = 0 * [0.10, 0.10];
SegmentItem.Parameters.Experiment.ParticleDiameter = sqrt(8) * [1, 1];
SegmentItem.Parameters.ParticleConcentration = 5E-3 * [1, 1];
JOBLIST(1) = SegmentItem;

end







