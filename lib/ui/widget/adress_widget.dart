import 'package:flutter/material.dart';
import 'package:flutter_cep/models/cep_model.dart';

class AdressWidget extends StatelessWidget {
  final CepModel? cepModel;

  const AdressWidget({super.key, this.cepModel});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (cepModel == null) {
      return SizedBox.shrink();
    }

    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                theme.colorScheme.primary,
                theme.colorScheme.secondary,
              ],
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            spacing: 8,
            children: [
              Icon(
                Icons.check_circle_rounded,
                size: 48,
                color: Colors.white,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Cep Encontrado!',
                style: theme.textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                ),
              ),
              Text(
                'Informações do endereço',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: Colors.white.withValues(alpha: 0.9),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        _InfoCard(
          icon: Icons.location_on_rounded,
          title: 'CEP',
          subTitle: cepModel!.cep,
          color: theme.colorScheme.primary,
        ),
        _InfoCard(
          icon: Icons.streetview_rounded,
          title: 'Logradouro',
          subTitle: cepModel!.logradouro,
          color: theme.colorScheme.secondary,
        ),
        _InfoCard(
          icon: Icons.home_rounded,
          title: 'Bairro',
          subTitle: cepModel!.bairro,
          color: theme.colorScheme.tertiary,
        ),
        _InfoCard(
          icon: Icons.location_city_rounded,
          title: 'Cidade',
          subTitle: cepModel!.localidade,
          color: Color(0xff10b981),
        ),
        _InfoCard(
          icon: Icons.map_rounded,
          title: 'Estado',
          subTitle: cepModel!.estado,
          color: Colors.orange,
        ),
        if (cepModel!.complemento.isNotEmpty)
          _InfoCard(
            icon: Icons.info_rounded,
            title: 'Complemento',
            subTitle: cepModel!.complemento,
            color: Color.fromARGB(255, 49, 83, 219),
          ),
      ],
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  final Color color;
  const _InfoCard({
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        spacing: 16,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              color: color,
              size: 24,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  subTitle,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
